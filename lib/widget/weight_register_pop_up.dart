import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeightCard extends StatelessWidget {
  const WeightCard(this.records, this.index);

  final records;
  final index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(10,10),
          ),
        ],
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
           Container(
              padding: const EdgeInsets.only(left: 12),
              width: 100,
              child: Text(
                '${records[index]['weight']}Kg',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 24,
                            child: Icon(Icons.calendar_today),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                              records[index]['day'],
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                            child: Icon(Icons.comment),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            records[index]['comment'],
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.delete),
                SizedBox(width: 10),
                Icon(Icons.pending),
                SizedBox(width: 10),
              ],
            ),
          );
  }
}

class WeightRegisterPopUp extends StatelessWidget {
  const WeightRegisterPopUp(
    this.saveWeight, this.saveComment, this.registerOnTap);

  final saveWeight;
  final saveComment;
  final registerOnTap;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        title: Text('今日の体重を入力しよう'),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 24,
        ),
        children: [
          Row(
            children: [
              Container(
                width: 200,
                padding: EdgeInsets.only(left: 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '嘘着くなよ',
                    labelText: '今日の体重',
                  ),
                  onChanged: (value) {
                    saveWeight(value);
                  },
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                 width: 10,
              ),
              Text('Kg'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            padding: EdgeInsets.only(left: 4),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '後悔先に立たず',
                labelText: '懺悔の一言'
              ),
              onChanged: (value) {
                saveComment(value);
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '登録',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () {
              registerOnTap();
            },
          ),
        ],
      );
    }
  }
