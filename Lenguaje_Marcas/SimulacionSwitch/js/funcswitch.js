var color1 = "";

function myFunction() {    
    document.getElementById("demo").style.color = document.getElementById('color').value;
    color1 = document.getElementById('color').value;
  }








  function miFunc(a) {
    document.getElementById("demo").style.color = a;
   }
   
    function activa(b) {
    document.getElementById("demo").style.color = document.getElementById('color').value;
    color1 = document.getElementById('color').value;
    document.getElementById(b).style.backgroundColor = color1 /*document.getElementById("demo").style.color*/;
   }
   
   function graba(b) {
  /* 
   set fso = CreateObject("Scripting.FileSystemObject"); 
     set s   = fso.CreateTextFile(b, True);
  
     //var firstName = document.getElementById('FirstName');
    // var lastName  = document.getElementById('lastName');
  
     s.writeline("verde" );
     s.writeline("azult");
  
     s.writeline("-----------------------------");
     s.Close();
     */
     alert('grabado');
     
    }