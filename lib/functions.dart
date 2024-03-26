void add(num1,num2){
  num1 + num2;
}

void demo(){
  add(5, 3);
}

// Named parameter
void namedParameter({firstName,String lastName = "Javed",String dept = "Front End && Technology"}){}
// void namedParameter({required firstName,required String lastName = "Javed",String dept = "Front End && Technology"}){}



// Positional paramter
void positionalParamter(String firstName, [String lastName = ""]){}

void main(){

  namedParameter(lastName:"asif"); // calling Named parameter
  namedParameter(); // optional arguments
  // namedParameter(firstName: "asif", lastName: "javed");

  positionalParamter("asif", "javed"); // calling positional parameter
  positionalParamter("asif"); // making argument as a optional 
}