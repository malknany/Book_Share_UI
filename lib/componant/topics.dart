import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../views/topics/cntroller.dart';

class TopicItem extends StatefulWidget {
  const TopicItem({Key? key, required this.control}) : super(key: key);
  final TopicsController control;

  @override
  State<TopicItem> createState() => _TopicItemState();
}

class _TopicItemState extends State<TopicItem> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 14,
      runSpacing: 33.8,
      children: List.generate(
        widget.control.topic.length,
        (index) => SizedBox(
          width: 100.w,
          height: 130.h,
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.control.topic[index].isSelect =
                    !widget.control.topic[index].isSelect;
              });
            },
            child: Column(
              children: [
                widget.control.topic[index].isSelect
                    ? Stack(
                        children: [
                          SizedBox(
                            height: 100.h,
                            width: 100.w,
                            child: Image.asset(
                              widget.control.topic[index].img,
                            ),
                          ),
                          Container(
                            height: 100.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xffFF6EA1).withOpacity(0.4),
                                ),
                              ],
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 25,
                            ),
                          )
                        ],
                      )
                    : SizedBox(
                        height: 100.h,
                        width: 100.w,
                        child: Image.asset(
                          widget.control.topic[index].img,
                        ),
                      ),
                SizedBox(
                  height: 6.2.h,
                ),
                Text(
                  widget.control.topic[index].text,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: widget.control.topic[index].isSelect
                          ? const Color(0xffFF6EA1)
                          : const Color(0xff17191D)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
