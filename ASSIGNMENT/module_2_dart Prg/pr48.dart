void main(){
  Map<int,String>map={
    05:'Surat',
    01:'Ahmedabad',
  };
  print('length:${map.length}');
  for(int key in map.keys){
    print('key:$key value:${map[key]}');
  }

}