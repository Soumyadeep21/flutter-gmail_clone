import 'package:gmail_clone/Main_Email_Body.dart';
import 'package:gmail_clone/dummy.dart';

enum pages{allInboxes,primary,social,promotions,starred,snoozed,important,sent,drafts,spam,bin}

 pageGenerator(pages page){
    switch(page){
      case pages.allInboxes:
        return DummyPage(data: "ALL INBOXES",);
        break;
      case pages.primary:
        return DummyPage(data: "PRIMARY",);
        break;
      case pages.social:
        return DummyPage(data: "SOCIAL",);
        break;
      case pages.promotions:
        return DummyPage(data: "PROMOTIONS",);
        break;
      case pages.starred:
        return DummyPage(data: "STARRED",);
        break;
        case pages.snoozed:
          return DummyPage(data: "SNOOZED",);
          break;
      case pages.important:
      return DummyPage(data: "IMPORTANT",);
      break;
      case pages.sent:
        return DummyPage(data: "SENT",);
        break;
      case pages.drafts:
        return DummyPage(data: "DRAFTS",);
        break;
      case pages.spam:
        return DummyPage(data: "SPAM",);
        break;
      case pages.bin:
        return DummyPage(data: "BIN",);
        break;


    }
}