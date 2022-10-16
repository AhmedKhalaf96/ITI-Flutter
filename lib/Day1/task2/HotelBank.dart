class RoomsBank{
  List<Room> RoomList=[
    Room(id:1, name:'Super Room' , disc:' Super Room 4 Beds',pic:'https://images.unsplash.com/photo-1595526051245-4506e0005bd0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmVkcm9vbSUyMGludGVyaW9yfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
    Room(id:2, name:'double Room', disc:' good Room 2 Beds',pic:'https://images.unsplash.com/photo-1617325247661-675ab4b64ae2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80'),
    Room(id:3, name:'single Room', disc:' Room 1 Beds',pic:'https://images.unsplash.com/photo-1560185893-a55cbc8c57e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
  ];
  int current=0;
  Room getRoom(){
    return RoomList[current];
  }

  movef() {
    current++;
  }
  moveb() {
    current--;
  }
}

class Room{
  int id;
  String name;
  String disc;
  String pic;
  Room({required this.id,required this.name,required this.disc,required this.pic});
}