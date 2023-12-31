import 'package:final_project_news_app/components/simple/simple_appbar.dart';
import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';

class CommentHomePage extends StatefulWidget {
  const CommentHomePage({super.key});

  @override
  State<CommentHomePage> createState() => _CommentHomePageState();
}

class _CommentHomePageState extends State<CommentHomePage> {
  final _commentController = TextEditingController();
  bool _isComment = false;
  final int _k=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _commentController.addListener(keyboardController);
  }
  void keyboardController(){
          if(View.of(context).viewInsets.bottom==0){
        setState((){
        _isComment = _commentController.text.isNotEmpty;
        if(_k==0) _isComment = true;
        });
      }else{
        setState((){
        _isComment = true;
        });
      }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _commentController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SimpleAppBar(context,null),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text("Sports",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.headlineMedium)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lewandowski tipped for Ballon d'Or as Messi eyes seventh prize",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Davann Tet',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 3,
                          backgroundColor: AppColors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Jan 20, 2021',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                //comment number
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Comments',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(12)',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  color: AppColors.greyscale,
                  width: double.infinity,
                  height: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                //comment
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Davann Tet',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const CircleAvatar(
                                  radius: 3,
                                  backgroundColor: AppColors.grey,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '10 mins ago',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 30,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.supergrey,
                            ),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                    //Like,Reply,Report
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 20,
                              color: AppColors.greyscale,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Like',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.reply_outlined,
                              size: 20,
                              color: AppColors.greyscale,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Reply',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.report_outlined,
                              size: 20,
                              color: AppColors.greyscale,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Report',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: _isComment ? MediaQuery.of(context).viewInsets.bottom+50:50,
          color: AppColors.bluewhite,
          child: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: TextField(
                    controller: _commentController,
                    decoration: const InputDecoration(
                      hintText: 'Write a comment...',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: AppColors.supergrey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 25,
                      color: AppColors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.send_outlined,
                      size: 25,
                      color: AppColors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
