//Q Create a program using List.
void main(){
  List<String>names=['Anjali','Rima','Priya'];
  for(String name in names){
    print(name);
  }
    names.removeWhere((element) => element == 'Rima');
  print(names);
  names[1]='Ram';
  print(names);
  var index = names.indexWhere((element) => element == 'Ram');
  print('index : $index');
  if(names.contains('Anjali')){
    print('List contains this name...');
  }else{
    print('List does not contains this name...');
  }

}