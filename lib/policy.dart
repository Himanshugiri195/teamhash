import 'package:flutter/material.dart';
import '
cardbuilder.dart';

class policyclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Disease Policy",
      home: Scaffold(
        appBar: AppBar(title: Text("Disease List"),),
        body: 
        Center(
          child: 
          Padding(

          child:
          
          Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Diseaseone()),);
              },

              child: Text("Nipha Virus"),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Diseastwo()),);
              },
              child: Text("Zika Virus"),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Diseasthree()),);
              },
              child: Text("Swine Flu"),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Diseasfour()),);
              },
              child: Text("Dengue"),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyAppvoid()),);
              },
              child: Text("Cholera"),
            )
          ],
        ),
        padding: EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0)
          )
        )
      ),
    );
  }
  
}


class Diseaseone extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Disease name",
      home: Scaffold(
        appBar: AppBar(title: Text("Nipha Virus"),),
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(25.0),
          child:Column(
          children: <Widget>[
            Text("Nipah virus infection is a viral infection caused by the Nipah virus. Symptoms from infection vary from none to fever, cough, headache, shortness of breath, and confusion. This may worsen into a coma over a day or two., Complications can include inflammation of the brain and seizures following recovery"),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("SYMPTOMS",style:TextStyle(fontSize: 30)),
            ),
            Text("The symptoms start to appear after 5–14 days from exposure., Initial symptoms are fever, headache, drowsiness followed by disorientation and mental confusion. These symptoms can progress into coma as fast as in 24–48 hours. Encephalitis, inflammation of the brain, is a potentially fatal complication of Nipah virus infection. Respiratory illness can also be present during the early part of the illness."),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Diagnosis",style:TextStyle(fontSize: 30)),
            ),
            Text("Laboratory diagnosis of Nipah virus infection is made using reverse transcriptase polymerase chain reaction (RT-PCR) from throat swabs, cerebrospinal fluid, urine and blood analysis during acute and convalescent stages of the disease. IgG and IgM antibody detection can be done after recovery to confirm Nipah virus infection."),
            
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Prevention",style:TextStyle(fontSize: 30)),
            ),
            Text("Prevention of Nipah virus infection is important since there is no effective treatment for the disease. The infection can be prevented by avoiding exposure to bats in endemic areas and sick pigs. Drinking of raw palm sap (palm toddy) contaminated by bat excrete, eating of fruits partially consumed by bats and using water from wells infested by bats should be avoided.")
          ],
        ),
        )
         ,
        )
        
      ),
    );
  }
  
}
class Diseastwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Disease name",
      home: Scaffold(
        appBar: AppBar(title: Text("data"),),
        body: Column(),
      ),
    );
  }
  
}
class Diseasthree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Disease name",
      home: Scaffold(
        appBar: AppBar(title: Text("data"),),
        body: Column(),
      ),
    );
  }
  
}
class Diseasfour extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Disease name",
      home: Scaffold(
        appBar: AppBar(title: Text("data"),),
        body: Column(),
      ),
    );
  }
  
}
class Diseasfive extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Disease name",
      home: Scaffold(
        appBar: AppBar(title: Text("data"),),
        body: Column(),
      ),
    );
  }
  
}


class cardview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Disease name",
      home: Scaffold(
        appBar: AppBar(title: Text("data"),),
        body: Column(),
      ),
    );
  }
  
}