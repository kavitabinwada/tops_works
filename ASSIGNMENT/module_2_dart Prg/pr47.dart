//47.create program using Set.
void main(){
  Set<String>colourList={'Red','Pink'};
  colourList.add('Blue');
  colourList.add('Black');
  colourList.add('Orange');

  print(colourList);
  colourList.removeWhere((element) => element == 'Black');
  print(colourList);

}