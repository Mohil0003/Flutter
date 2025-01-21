void main(){
  List<String> city = ['Delhi' , 'Mumbai' , 'Bangalore' , 'Hyderabad' , 'Ahemdabad'];

  print(city);

  for(int i=0 ; i<city.length ; i++){
    if(city[i]=='Ahemdabad'){
      city[i] = 'Surat';
    }
  }

  print("After Replaced : ");
  print(city);
}