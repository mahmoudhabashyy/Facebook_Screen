import 'package:facebook_route/widgets/color_pallet.dart';
import 'package:facebook_route/widgets/post_item.dart';
import 'package:flutter/material.dart';

import '../widgets/story_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child:  Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        "assets/images/person2.jpg",
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Write something here.....",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 45,
                      child: Image.asset(
                        "assets/images/image (1).png",
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Divider(
                thickness: 20,
                color: Colors.grey,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  height: size.height * 0.20,
                  child: ListView.builder(
                    itemCount: 30,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return StoryItem(size: size);
                    },
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Divider(
                thickness: 20,
                color: Colors.grey,
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index)
            {
              debugPrint("build post with index $index");
              return const PostItem();
            }
            )
              ,),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      //backgroundColor: ,
      title: const Text(
        "Facebook",
        style: TextStyle(
          color: ColorsPallet.primaryColor,
          fontWeight: FontWeight.w900,
          fontSize: 30,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Image(
            image: AssetImage(
              "assets/icons/messenger.png",
            ),
          ),
        ),
      ],
      bottom: _buildTabBar(),
    );
  }

  TabBar _buildTabBar() {
    return const TabBar(
      indicatorColor: ColorsPallet.primaryColor,
      labelColor: ColorsPallet.primaryColor,
      unselectedLabelColor: Colors.black,
      tabs: [
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.people)),
        Tab(icon: Icon(Icons.live_tv_rounded)),
        Tab(icon: Icon(Icons.person)),
        Tab(icon: Icon(Icons.notifications)),
        Tab(icon: Icon(Icons.menu)),
      ],
    );
  }
}


