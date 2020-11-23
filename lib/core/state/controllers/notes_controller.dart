import 'package:built_collection/built_collection.dart';
import 'package:handy_notes/core/models/notes/notes.dart';
import 'package:handy_notes/core/state/controllers/base_controller.dart';

class NotesController extends BaseController {
  List<NotesEntity> _notes = [
    NotesEntity((b) {
      b
        ..noteId = '1'
        ..title =
            'How to become rich in ten Days In luctus sollicitudin mauris, ac sagittis orci pellentesque et.'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#E6EE9B'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '2'
        ..title =
            'In luctus sollicitudin mauris, ac sagittis orci pellentesque et.'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#80CBC4'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '3'
        ..title =
            'How to become rich in ten Days,Vestibulum commodo arcu ut enim ultricies'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#FFCC80'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '4'
        ..title = 'How to become rich in ten Days'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#CF93D9'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '5'
        ..title =
            'Donec ultrices tincidunt lorem ac egestas. Proin et lorem risus. Sed tempus urna a lorem aliquet,'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#80DEEA'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '6'
        ..title =
            'How to become rich in ten Dayseeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#E6EE9B'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '2'
        ..title =
            'In luctus sollicitudin mauris, ac sagittis orci pellentesque et.'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#80CBC4'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '3'
        ..title =
            'How to become rich in ten Days,Vestibulum commodo arcu ut enim ultricies'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#FFCC80'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '2'
        ..title =
            'In luctus sollicitudin mauris, ac sagittis orci pellentesque et.'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#80CBC4'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '3'
        ..title =
            'How to become rich in ten Days,Vestibulum commodo arcu ut enim ultricies'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#FFCC80'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '1'
        ..title =
            'How to become rich in ten Days In luctus sollicitudin mauris, ac sagittis orci pellentesque et.'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#E6EE9B'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '2'
        ..title =
            'In luctus sollicitudin mauris, ac sagittis orci pellentesque et.'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#80CBC4'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '3'
        ..title =
            'How to become rich in ten Days,Vestibulum commodo arcu ut enim ultricies'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#FFCC80'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '1'
        ..title =
            'How to become rich in ten Days In luctus sollicitudin mauris, ac sagittis orci pellentesque et.'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#E6EE9B'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '2'
        ..title =
            'In luctus sollicitudin mauris, ac sagittis orci pellentesque et.'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#80CBC4'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
    NotesEntity((b) {
      b
        ..noteId = '3'
        ..title =
            'How to become rich in ten Days,Vestibulum commodo arcu ut enim ultricies'
        ..content =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida id mi vel fringilla. Phasellus nulla felis, posuere quis magna vitae, tempus commodo velit. Vivamus odio sapien, posuere a malesuada et, convallis sit amet lacus. Donec eu fringilla nunc, vitae facilisis elit. Nulla sed orci massa. Curabitur non commodo ante. Sed sit amet mauris odio. Cras vestibulum leo vitae dui auctor, vulputate tempor odio lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ut metus facilisis, iaculis elit ut, eleifend mauris. Nulla ut pretium ipsum, non pellentesque dui. Aenean non porta sapien. Pellentesque viverra eget lacus nec molestie. Sed at turpis nulla.'
        ..createdAt = DateTime.now().millisecondsSinceEpoch
        ..labelColor = '#FFCC80'
        ..tags = ListBuilder(['Work', 'Home', 'School']);
    }),
  ];
  List<NotesEntity> get notes => _notes;
}
