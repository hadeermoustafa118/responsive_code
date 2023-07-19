void main(){
    reunApp(MaterialApp(home: HomeView()));
}

class HomeView extends StatelessWidget{
    @override
    Widget build(BuildContext context){

        return Scaffold(
            body: Responsive(mobileWidget:MobileContent(), tabletWidget: TabletContent(), webWidget: WebContent() )
        );
    }
}

class MobileContent extends StatelessWidget{

      @override
    Widget build(BuildContext context){

        return Container(child(Text('mobile')));
    }
}

class TabletContent extends StatelessWidget{

      @override
    Widget build(BuildContext context){

        return Container(child(Text('tablet')));
    }
}

class WebContent extends StatelessWidget{

      @override
    Widget build(BuildContext context){

        return Container(child(Text('web')));
    }
}