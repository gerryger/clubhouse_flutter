import 'package:clubhouse_flutter/data.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({Key key, this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${room.club} 🏡'.toUpperCase(),
                style: Theme.of(context).textTheme.overline.copyWith(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.0,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                room.name,
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100.0,
                      child: Stack(
                        children: [
                          Positioned(
                              left: 28.0,
                              top: 20.0,
                              child: UserProfileImage(
                                imageUrl: room.speakers[1].imageUrl,
                                size: 48.0,
                              )),
                          UserProfileImage(
                            imageUrl: room.speakers[0].imageUrl,
                            size: 48.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
