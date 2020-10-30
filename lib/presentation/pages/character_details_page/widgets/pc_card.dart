import 'package:flutter/material.dart';

class PCCard extends StatelessWidget {
  final String name;
  final String favoredClass;
  final String level;
  final String race;
  final String gender;
  final String age;
  final String height;
  final String weight;
  final String home;
  final String alignment;
  final String diety;
  final String languages;
  final String characterStr;
  final String characterDex;
  final String characterCon;
  final String characterInt;
  final String characterWis;
  final String characterCha;
  final String characterMaxHP;
  final String characterAC;
  final String characterFort;
  final String characterRef;
  final String characterWill;
  final String characterMelee;
  final String characterRanged;
  final String characterCMD;
  final String characterCMB;
  final String imagePath;
  final String bio;

  const PCCard({
    this.name,
    this.favoredClass,
    this.level,
    this.race,
    this.gender,
    this.age,
    this.height,
    this.weight,
    this.home,
    this.alignment,
    this.diety,
    this.languages,
    this.characterStr,
    this.characterDex,
    this.characterCon,
    this.characterInt,
    this.characterWis,
    this.characterCha,
    this.characterMaxHP,
    this.characterAC,
    this.characterFort,
    this.characterRef,
    this.characterWill,
    this.characterMelee,
    this.characterRanged,
    this.characterCMD,
    this.characterCMB,
    this.imagePath,
    this.bio,
  });

  @override
  Widget build(BuildContext context) {
    var backgroundImage = 'assets/images/forest.jpg';
    var _imagePath = imagePath ?? '';

    return Card(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .75,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                // height: 24,
                constraints: BoxConstraints.expand(height: 42),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  name ?? 'NAME',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                flex: 5,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(backgroundImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                        // height: 180,
                        // width: 150,
                        child: _imagePath.isEmpty ? Container() : Image.asset(imagePath),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          // height: 300,
                          // width: 180,
                          color: Colors.amber,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Race:'),
                                    Text(race ?? ''),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Favored Class:'),
                                    Text(favoredClass ?? ''),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Level:'),
                                    Text(level ?? ''),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Gender:'),
                                    Text(gender ?? ''),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Age:'),
                                    Text(age ?? ''),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Height:'),
                                    Text(height ?? ''),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Weight:'),
                                    Text(weight ?? ''),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Home:'),
                                    Text(home ?? ''),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Alignment:'),
                                    Text(alignment ?? ''),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Diety:'),
                                    Text(diety ?? ''),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  children: [
                                    Text('Languages:'),
                                    Flexible(
                                      child: Text(
                                        languages ?? '',
                                        textAlign: TextAlign.end,
                                        // maxLines: 8,
                                        // overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  constraints: BoxConstraints.expand(),
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text('STR:'),
                                Text(characterStr ?? ''),
                              ],
                            ),
                            Row(
                              children: [
                                Text('DEX:'),
                                Text(characterDex ?? ''),
                              ],
                            ),
                            Row(
                              children: [
                                Text('CON:'),
                                Text(characterCon ?? ''),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text('INT:'),
                                Text(characterInt ?? ''),
                              ],
                            ),
                            Row(
                              children: [
                                Text('WIS:'),
                                Text(characterWis ?? ''),
                              ],
                            ),
                            Row(
                              children: [
                                Text('CHA:'),
                                Text(characterCha ?? ''),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text('Max HP:'),
                                Text(characterMaxHP ?? ''),
                              ],
                            ),
                            Row(
                              children: [
                                Text('AC:'),
                                Text(characterAC ?? ''),
                              ],
                            ),
                            Row(
                              children: [
                                Text('CMD:'),
                                Text(characterCMD ?? ''),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text('Melee:'),
                                Text(characterMelee ?? ''),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Ranged:'),
                                Text(characterRanged ?? ''),
                              ],
                            ),
                            Row(
                              children: [
                                Text('CMB:'),
                                Text(characterCMB ?? ''),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(8),
                  constraints: BoxConstraints.expand(height: 280),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bio:',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          child: Text(
                            bio?? '',
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
