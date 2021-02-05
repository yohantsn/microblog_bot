import 'package:micro_blog_bot/domain/models/post_model.dart';
import 'package:mobx/mobx.dart';

part 'feed_controller.g.dart';

class FeedController = _FeedController
    with _$FeedController;

abstract class _FeedController with Store{
  _FeedController(){
    isLoading = true;
    Future.delayed(Duration(seconds: 3)).then((value) => isLoading = false);
  }

  @observable
  bool isLoading = false;

  @observable
  List<PostModel> posts = [
    PostModel(txtPost: "arcu odio ut sem nulla pharetra diam sit amet nisl "
        "suscipit adipiscing bibendum est ultricies integer quis auctor elit "
        "sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt"
        " nunc pulvinar sapien et ligula ullamcorper malesuada proin libero "
        "nunc consequat interdum varius sit amet mattis vulputate enim nulla "
        "aliquet", userNamePost: "Yohan Sampaio", datePost: DateTime.now()),
    PostModel(txtPost: "arcu odio ut sem nulla pharetra diam sit amet nisl "
        "suscipit adipiscing bibendum est ultricies integer quis auctor elit "
        "sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt"
        " nunc pulvinar sapien et ligula ullamcorper malesuada proin libero "
        "nunc consequat interdum varius sit amet mattis vulputate enim nulla "
        "aliquet", userNamePost: "Yohan Sampaio", datePost: DateTime.now()),
    PostModel(txtPost: "arcu odio ut sem nulla pharetra diam sit amet nisl "
        "suscipit adipiscing bibendum est ultricies integer quis auctor elit "
        "sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt"
        " nunc pulvinar sapien et ligula ullamcorper malesuada proin libero "
        "nunc consequat interdum varius sit amet mattis vulputate enim nulla "
        "aliquet", userNamePost: "Yohan Sampaio", datePost: DateTime.now()),
    PostModel(txtPost: "arcu odio ut sem nulla pharetra diam sit amet nisl "
        "suscipit adipiscing bibendum est ultricies integer quis auctor elit "
        "sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt"
        " nunc pulvinar sapien et ligula ullamcorper malesuada proin libero "
        "nunc consequat interdum varius sit amet mattis vulputate enim nulla "
        "aliquet", userNamePost: "Yohan Sampaio", datePost: DateTime.now()),
    PostModel(txtPost: "arcu odio ut sem nulla pharetra diam sit amet nisl "
        "suscipit adipiscing bibendum est ultricies integer quis auctor elit "
        "sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt"
        " nunc pulvinar sapien et ligula ullamcorper malesuada proin libero "
        "nunc consequat interdum varius sit amet mattis vulputate enim nulla "
        "aliquet", userNamePost: "Yohan Sampaio", datePost: DateTime.now()),
    PostModel(txtPost: "arcu odio ut sem nulla pharetra diam sit amet nisl "
        "suscipit adipiscing bibendum est ultricies integer quis auctor elit "
        "sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt"
        " nunc pulvinar sapien et ligula ullamcorper malesuada proin libero "
        "nunc consequat interdum varius sit amet mattis vulputate enim nulla "
        "aliquet", userNamePost: "Yohan Sampaio", datePost: DateTime.now()),
    PostModel(txtPost: "arcu odio ut sem nulla pharetra diam sit amet nisl "
        "suscipit adipiscing bibendum est ultricies integer quis auctor elit "
        "sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt"
        " nunc pulvinar sapien et ligula ullamcorper malesuada proin libero "
        "nunc consequat interdum varius sit amet mattis vulputate enim nulla "
        "aliquet", userNamePost: "Yohan Sampaio", datePost: DateTime.now()),
    PostModel(txtPost: "arcu odio ut sem nulla pharetra diam sit amet nisl "
        "suscipit adipiscing bibendum est ultricies integer quis auctor elit "
        "sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt"
        " nunc pulvinar sapien et ligula ullamcorper malesuada proin libero "
        "nunc consequat interdum varius sit amet mattis vulputate enim nulla "
        "aliquet", userNamePost: "Yohan Sampaio", datePost: DateTime.now()),
  ];
}