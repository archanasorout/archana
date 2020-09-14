import 'package:flutter/cupertino.dart';
import 'package:sam_work/animations/SlideRightRoute.dart';

fullHeight(BuildContext context)
{
  return MediaQuery.of(context).size.height;
}
fullWidth(BuildContext context)
{
  return MediaQuery.of(context).size.width;
}


navigate(BuildContext context,
    {@required Widget screen,
      bool isAwait = false,
      bool isRemove = false,
       }) async {
  if (isRemove)
    Navigator.pushReplacement(context, EnterExitRoute(enterPage: screen));
  else if (isAwait)
    return await Navigator.push(context, EnterExitRoute(enterPage: screen));

  else
    Navigator.push(context, EnterExitRoute(enterPage: screen));
}