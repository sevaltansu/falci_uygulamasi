import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(GununFali());
}

class GununFali extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[500],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('GÜNÜN FALI', style: TextStyle(fontSize: 25)),
          centerTitle: true,
        ),
        body: FalSayfasi(),
      ),
    );
  }
}

class FalSayfasi extends StatefulWidget {
  @override
  State<FalSayfasi> createState() => _FalSayfasiState();
}

int yanitIndex = 0;

class _FalSayfasiState extends State<FalSayfasi> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'images/falci.png',
            width: 200,
            height: 300,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            padding: EdgeInsets.all(2.0),
            color: Colors.white,
            child: TextButton(
              onPressed: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 1;
                });
              },
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red[800],
                    size: 40,
                  ),
                  SizedBox(width: 30),
                  Text('AŞK DURUMU',
                      style: TextStyle(
                        color: Colors.red[800],
                        fontSize: 20,
                      ))
                ],
              ),
            ),
          ),
          Container(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            padding: EdgeInsets.all(2.0),
            color: Colors.white,
            child: TextButton(
              onPressed: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 6;
                });
              },
              child: Row(
                children: [
                  Icon(
                    Icons.attach_money_rounded,
                    color: Colors.red[800],
                    size: 40,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'PARA DURUMU',
                    style: TextStyle(color: Colors.red[800], fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          Container(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            padding: EdgeInsets.all(2.0),
            color: Colors.white,
            child: TextButton(
              onPressed: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 11;
                });
              },
              child: Row(
                children: [
                  Icon(
                    Icons.explore,
                    color: Colors.red[800],
                    size: 40,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'GÜNLÜK TAVSİYELER',
                    style: TextStyle(color: Colors.red[800], fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 150,
              width: double.infinity,
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: Text(
                    yanitlar[yanitIndex],
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ))),
        ],
      ),
    );
  }
}
