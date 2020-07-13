import 'package:flutter/material.dart';
import 'package:linux_try/providers/details_provider.dart';
import 'package:provider/provider.dart';

class GameDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DefaultTextStyle(
      style: TextStyle(color: Colors.white),
      child: Column(
        children: [
          Consumer<DetailsProvider>(
            builder: (context, provider, _) {
              return Stack(
                children: [
                  Image.asset(
                    provider.image,
                    fit: BoxFit.cover,
                    width: size.width * 0.7,
                    height: size.height * 0.6,
                  ),
                  Container(
                    width: size.width * 0.7,
                    height: size.height * 0.6,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 48,
                      vertical: 24,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.65),
                      backgroundBlendMode: BlendMode.darken,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 32),
                        Text(
                          provider.gameTitle,
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                color: Colors.lightGreen,
                                offset: Offset(-1, -1),
                                spreadRadius: 2,
                                blurRadius: 2,
                              ),
                              BoxShadow(
                                color: Colors.lightGreen,
                                offset: Offset(1, 1),
                                spreadRadius: 2,
                                blurRadius: 2,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            RawMaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              ),
                              onPressed: () {},
                              fillColor: Colors.redAccent,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 72),
                              child: Text(
                                'PLAY',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(4),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white60,
                                  width: 2.0,
                                ),
                              ),
                              child: Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.redAccent,
                                  width: 2.0,
                                ),
                              ),
                              child: Icon(
                                Icons.star,
                                color: Colors.redAccent,
                                size: 24,
                              ),
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'HOURS PLAYED',
                                  style: TextStyle(color: Colors.white60),
                                ),
                                Text('280 hours'),
                                SizedBox(height: 8),
                                Text(
                                  'LAST PLAYED',
                                  style: TextStyle(color: Colors.white60),
                                ),
                                Text('July 12, 2020'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          Icons.close,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Container(
            width: size.width * 0.7,
            height: size.height * 0.4,
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 64,
                  margin: const EdgeInsets.symmetric(horizontal: 48),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white70, width: 0.5),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        padding: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: Colors.redAccent, width: 2.0),
                          ),
                        ),
                        child: Text(
                          'FRIENDS WHO PLAY',
                        ),
                      ),
                      SizedBox(width: 48),
                      Container(
                        alignment: Alignment.bottomCenter,
                        padding: const EdgeInsets.only(bottom: 18),
                        child: Text(
                          'EXTRA CONTENT',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
