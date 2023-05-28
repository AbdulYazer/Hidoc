import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidoc/application/bloc/home_page_bloc.dart';
import '../../core/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomePageBloc>(context).add(const FetchDetails());
    });

    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipperTop(),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(249, 197, 164, 1),
                    Colors.orangeAccent
                  ],
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: ClipperBottom(),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(253, 233, 210, 1),
                    Color.fromRGBO(253, 233, 210, 1)
                  ],
                ),
              ),
            ),
          ),
          CustomScrollView(
            physics: const NeverScrollableScrollPhysics(),
            slivers: [
              const FirstSection(),
              SliverFillRemaining(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const SizedBox(
                            height: 50,
                            child: ListTile(
                              title: Center(
                                child: Text(
                                  'Critical care',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              trailing: Icon(Icons.arrow_drop_down_outlined),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const HidocFirstCard(),
                        Text(
                          'Hidoc Bulletin',
                          style: text1,
                        ),
                        const HidocBulletinList(),
                        const TrendingHidocBulletinCard(),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            width: 250,
                            color: Colors.orange,
                            child: const Center(
                              child: Text(
                                'Read More Bulletins',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        const LatestArticleCard(),
                        const SizedBox(height: 20,),
                        const TrendingArticlesCard(),
                        const SizedBox(
                          height: 30,
                        ),
                        const ExploreArticlesCard(),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            color: Colors.orange,
                            child: const Center(
                              child: Text(
                                'Explore Hidoc Dr.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                            child: Text(
                          'What\'s more on Hidoc Dr',
                          style: text1,
                        )),
                        const SizedBox(
                          height: 20,
                        ),
                        const NewsCard(),
                        const SizedBox(
                          height: 20,
                        ),
                        const QuizzesCard(),
                        const SizedBox(height: 40,),
                        const VisitCardLastSection(),
                        const SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HidocFirstCard extends StatelessWidget {
  const HidocFirstCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        if (state.allDetails == null) {
          return const Center(
            child: Text('Nothing to show'),
          );
        } else {
          return Column(
            children: List.generate(
              1,
              (index) => HomePageCard(
                margin: 20,
                title: state
                    .allDetails!.data.article.articleTitle,
                description: state.allDetails!.data.article
                    .articleDescription,
                points: state
                    .allDetails!.data.article.rewardPoints,
                ontap: () {
                  launchURL(
                      url: state.allDetails!.data.article
                          .redirectLink);
                },
              ),
            ),
          );
        }
      },
    );
  }
}

class VisitCardLastSection extends StatelessWidget {
  const VisitCardLastSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(252, 217, 168, 0.4),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 230,
              child: Text(
                'Social Network for doctors - A Special feature on Hidoc Dr.',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    letterSpacing: -.5),
              ),
            ),
            Container(
              width: 70,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.orange),
              child: const Center(child: Text('visit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizzesCard extends StatelessWidget {
  const QuizzesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(229, 243, 253, 1),
                  child: Icon(
                    Icons.emoji_events_outlined,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Quizzes : ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -.5),
                ),
                Text(
                  'Participate & Win Exciting Prizes',
                  style: TextStyle(fontSize: 14, letterSpacing: -.5),
                )
              ],
            ),
            const Divider(),
            Row(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(229, 243, 253, 1),
                  child: Icon(
                    Icons.calculate_outlined,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                    width: 100,
                    child: Text(
                      'Medical Calculators: ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -.5),
                    )),
                SizedBox(
                    width: 160,
                    child: Text(
                      'Get Access to 800+ Evidence Based Calculators',
                      style: TextStyle(fontSize: 14, letterSpacing: -.5),
                    ))
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(236, 236, 236, 0.6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'News',
                  style: text1,
                ),
              ),
              BlocBuilder<HomePageBloc, HomePageState>(
                builder: (context, state) {
                  if (state.allDetails == null) {
                    return const Center(
                      child: Text('Nothing to show'),
                    );
                  } else if (state.allDetails!.data.news.isEmpty) {
                    return const Center(
                      child: Text('No news to show'),
                    );
                  } else {
                    return Column(
                      children: List.generate(
                          state.allDetails!.data.news.length, (index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                  state.allDetails!.data.news[index].title),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Image.network(
                              state.allDetails!.data.news[index].urlToImage,
                              fit: BoxFit.cover,
                              width: 400,
                              height: 200,
                            ),
                          ],
                        );
                      }),
                    );
                  }
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ExploreArticlesCard extends StatelessWidget {
  const ExploreArticlesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
                child: Text(
              'Explore more in Articles',
              style: text1,
            )),
            const Divider(
              color: Colors.black,
            ),
            BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                if (state.allDetails == null) {
                  return const Center(
                    child: Text('Nothing to show'),
                  );
                } else if (state.allDetails!.data.exploreArticle.isEmpty) {
                  return const Center(
                    child: Text('No articles to explore'),
                  );
                } else {
                  return Column(
                    children: List.generate(
                        state.allDetails!.data.exploreArticle.length, (index) {
                      return Column(
                        children: [
                          Text(state.allDetails!.data.exploreArticle[index]
                              .articleTitle),
                          const Divider(
                            color: Colors.grey,
                          )
                        ],
                      );
                    }),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

class TrendingArticlesCard extends StatelessWidget {
  const TrendingArticlesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Text(
                'Trending Articles',
                style: text1,
              ),
            ),
            const Divider(color: Colors.black,),
            BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                if (state.allDetails == null) {
                  return const Center(
                    child: Text('Nothing to show'),
                  );
                } else if (state.allDetails!.data.trandingArticle.isEmpty) {
                  return const Center(
                    child: Text('No trending articles'),
                  );
                } else {
                  return Column(
                      children: List.generate(
                          state.allDetails!.data.trandingArticle.length,
                          (index) {
                    return InkWell(
                      onTap: (){
                        launchURL(url:state.allDetails!.data.trandingArticle[index].redirectLink );
                      },
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 200,
                            width: 330,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(state.allDetails!.data
                                        .trandingArticle[index].articleImg),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            state.allDetails!.data.trandingArticle[index]
                                .articleTitle,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            color: Colors.black,
                          )
                        ],
                      ),
                    );
                  }));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LatestArticleCard extends StatelessWidget {
  const LatestArticleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
              child: Text(
                'Latest Articles',
                style: text1,
              ),
            ),
            BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                if (state.allDetails == null) {
                  return const Center(
                    child: Text('Nothing to show'),
                  );
                } else if (state.allDetails!.data.latestArticle.isEmpty) {
                  return const Center(
                    child: Text('No latest articles to show'),
                  );
                } else {
                  return Column(
                      children: List.generate(
                          state.allDetails!.data.latestArticle.length, (index) {
                    return Column(
                      children: const [
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('title'),
                      ],
                    );
                  }));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

class TrendingHidocBulletinCard extends StatelessWidget {
  const TrendingHidocBulletinCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trending Hidoc Bulletin',
              style: text1,
            ),
            BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                if (state.allDetails == null) {
                  return const Center(
                    child: Text('Nothing to show'),
                  );
                }
                return Column(
                  children: List.generate(
                      state.allDetails!.data.trandingBulletin.length,
                      (index) => TrendingHidocBulletin(
                            description: state.allDetails!.data
                                .trandingBulletin[index].articleDescription,
                            title: state.allDetails!.data
                                .trandingBulletin[index].articleTitle,
                            ontap: () {
                              launchURL(
                                  url: state.allDetails!.data
                                      .trandingBulletin[index].redirectLink);
                            },
                          )),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class TrendingHidocBulletin extends StatelessWidget {
  const TrendingHidocBulletin({
    super.key,
    required this.title,
    required this.description,
    this.ontap,
  });
  final String title;
  final String description;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleText,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: ontap,
          child: const Text(
            'Read More',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: mainClr,
                fontSize: 12),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class HidocBulletinList extends StatelessWidget {
  const HidocBulletinList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        if (state.allDetails == null) {
          return const Center(
            child: Text('Nothing to show'),
          );
        } else {
          return Column(
            children: List.generate(
              state.allDetails!.data.exploreArticle.length,
              (index) => HidocBulletIn(
                description: state
                    .allDetails!.data.exploreArticle[index].articleDescription,
                title:
                    state.allDetails!.data.exploreArticle[index].articleTitle,
                ontap: () {
                  launchURL(
                      url: state
                          .allDetails!.data.exploreArticle[index].redirectLink);
                },
              ),
            ),
          );
        }
      },
    );
  }
}

class FirstSection extends StatelessWidget {
  const FirstSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate.fixed([
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Colors.cyan[100]),
                  child: Center(
                      child: Text('hidoc',
                          style: GoogleFonts.kanit(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ))),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromRGBO(249, 197, 164, 1),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 95),
                  Text('ARTICLES', style: text1),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class HidocBulletIn extends StatelessWidget {
  const HidocBulletIn({
    super.key,
    required this.title,
    required this.description,
    this.ontap,
  });
  final String title;
  final String description;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 100,
          child: Divider(
            thickness: 5,
            color: mainClr,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: titleText,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: ontap,
          child: const Text(
            'Read More',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: mainClr,
                fontSize: 12),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class ClipperBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 1.0033250, size.height * 0.6790250);
    path0.cubicTo(
        size.width * 0.9441500,
        size.height * 0.6860375,
        size.width * 0.8674000,
        size.height * 0.7739625,
        size.width * 0.7833500,
        size.height * 0.7724375);
    path0.cubicTo(
        size.width * 0.4550750,
        size.height * 0.7610625,
        size.width * 0.5071250,
        size.height * 0.8858750,
        size.width * 0.5012500,
        size.height * 0.8859125);
    path0.cubicTo(
        size.width * 0.5045250,
        size.height * 0.8855750,
        size.width * 0.5091750,
        size.height * 0.9679625,
        size.width * 0.7208250,
        size.height * 1.0008250);
    path0.quadraticBezierTo(size.width * 0.8293000, size.height * 0.9992625,
        size.width * 1.0033250, size.height * 1.0019875);
    path0.quadraticBezierTo(size.width * 1.0033250, size.height * 0.9124625,
        size.width * 1.0033250, size.height * 0.6790250);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class ClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0005250, size.height * 0.0001500);
    path0.quadraticBezierTo(size.width * -0.0023250, size.height * 0.1971375,
        size.width * -0.0029500, size.height * 0.2466875);
    path0.cubicTo(
        size.width * 0.1875750,
        size.height * 0.2507625,
        size.width * 0.4177000,
        size.height * 0.1666375,
        size.width * 0.3474750,
        size.height * -0.0002625);
    path0.quadraticBezierTo(size.width * 0.2774000, size.height * -0.0009625,
        size.width * 0.0005250, size.height * 0.0001500);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    super.key,
    required this.margin,
    required this.title,
    required this.description,
    required this.points,
    this.ontap,
  });
  final double margin;
  final String title;
  final String description;
  final int points;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      margin: EdgeInsets.only(bottom: margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
            height: 180,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Icon(
                  Icons.newspaper_outlined,
                  size: 150,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: titleText,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(description),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: InkWell(
                    onTap: ontap,
                    child: const Text(
                      'Read full article to earn points',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          color: Color.fromRGBO(0, 189, 212, 1)),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  decoration: const BoxDecoration(
                    color: mainClr,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        const Text(
                          'Points',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          '$points',
                          style: text1.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
