import 'package:chap_app/widget/message_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final authUser = FirebaseAuth.instance.currentUser!;

    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chat')
          .orderBy(
            'createdAt',
            descending: true,
          )
          .snapshots(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text('No messages'),
          );
        }
        var loadedMessages = snapshot.data!.docs;
        return ListView.builder(
          padding: const EdgeInsets.only(bottom: 40, left: 13, right: 13),
          reverse: true,
          itemCount: loadedMessages.length,
          itemBuilder: (ctx, index) {
            final message = loadedMessages[index].data();
            final nextMessage = index + 1 < loadedMessages.length
                ? loadedMessages[index + 1].data()
                : null;
            final currentUserId = message['userId'];
            final nextUserId =
                nextMessage != null ? nextMessage['userId'] : null;
            final nextUserIsSame = nextUserId == currentUserId;
            if (nextUserIsSame) {
              return MessageBubble.next(
                  message: message['text'],
                  isMe: authUser.uid == currentUserId);
            } else {
              return MessageBubble.first(
                  userImage: message['userImage'],
                  username: message['username'],
                  message: message['text'],
                  isMe: authUser.uid == currentUserId);
            }
          },
        );
      },
    );
  }
}
