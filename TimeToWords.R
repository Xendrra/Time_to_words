TimeToWords<-function(hours){
  pocetp=nchar(hours)
  hodiny_cisla=c('1','2','3','4','5','6','7','8','9','10','11','12')
  hodiny_slova=c('one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','one')
  minuty_cisla=c('00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59')
  minuty_slova=c("o'clock",'one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen','fourteen','quarter','sixteen','seventeen','eighteen','nineteen','twenty','twenty-one','twenty-two','twenty-three','twenty-four','twenty-five','twenty-six','twenty-seven','twenty-eight','twenty-nine','half')
  pomocna_cisla=c(0:60)
  pomoc=numeric()
  spojka=""
  if (pocetp==5){
    hodiny=substring(hours, 1,2)
    minuty=substring(hours, 4,5) }
  else if (pocetp==4){
    hodiny=substring(hours, 1,1)
    minuty=substring(hours, 3,4)
  }else{
    print('error: nelibi se mi vstup')
  }
  }
  for (i in 1:60){
    if (minuty==minuty_cisla[i]){
      pomoc=pomocna_cisla[i]
    }
  }
  for (i in 1:60){ 
    if (pomoc<=30){
      spojka='past'
      if (minuty==minuty_cisla[i]){ 
        minuty=minuty_slova[i]
      }}else{
        spojka='to'
        if (minuty==minuty_cisla[i]){
          minuty=60-pomocna_cisla[i]
        }
        if (minuty==pomocna_cisla[i]){
          minuty=minuty_slova[i]
        }
      }
  }
for (i in 1:12){
  if (hodiny==hodiny_cisla[i]){
    if (pomoc<=30){ 
     hodiny=hodiny_slova[i]}
    else{
      hodiny=hodiny_slova[i+1]
    }
  }
  print(minuty)
  print(spojka)
  print(hodiny)
}