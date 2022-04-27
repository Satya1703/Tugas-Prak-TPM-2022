import 'package:flutter/material.dart';
import 'package:httpmodul/countries_model.dart';
import 'package:httpmodul/data_covid.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Countries")

      ),
      body: _buildDetailCountriesBody(),
    );
  }
  Widget _buildDetailCountriesBody() {
    return Container(
      child: FutureBuilder(
        future: CovidDataSource.instance.loadCountries(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot,) {
          if(snapshot.hasError) {
            return _buildError();
          }
          if (snapshot.hasData) {
            CountriesModel countriesModel = CountriesModel.fromJson(snapshot.data);
            return _buildSuccess(countriesModel);
          }
          return _buildLoading();
        },
      )
    );
  }

  Widget _buildError() {
    return Text("data error");
  }

  Widget _buildLoading(){
    return Center(
      child: CircularProgressIndicator(),
    );
  }
  
  Widget _buildSuccess(CountriesModel data){
    return ListView.builder(itemCount: data.countries?.length, 
      itemBuilder: (BuildContext context, int index){
      return _buildItem("${data.countries?[index].name}", "${data.countries?[index].iso3}");
      }
    );
  }
  Widget _buildItem(String tes1, String tes2){
    return Card(
      child: InkWell(
        onTap: (){
          debugPrint(tes1);
        },
        child: SizedBox(
          height: 100,
          child: Column(
            children: [
              Text(tes1), Text(tes2)
            ],
          ),
        ),
      ),
    );
  }
}


