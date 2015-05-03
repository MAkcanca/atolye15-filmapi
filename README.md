## Atölye15 FilmDB RESTFul API Çalışması v1.1 ##

> Öncelikle ilk defa RESTFul API yazıyorum, ufak tefek hatalar olabilir, issue açarsanız en kısa sürede fixlerim. 

## Film Arama ##

----------
**Parametreler**

 - title
 
 
 *Film Başlığı ile arama*

 `/v1/search?title=Star%20Wars`

 - genre
 *Film türüne göre arama.*
  `/v1/search?genre=Horror`

 - year
*Yayın yılına göre arama.*
 `/v1/search?year=2015`

 - imdb
 *IMDb puanına göre arama.*
  `/v1/search?imdb=5.0`

 - actor
*Oyuncuya göre arama.*
 `/v1/search?actor=Cem%20Yılmaz`

 - director
 *Yönetmene göre arama.*
  `/v1/search?director=Çağan%20Irmak`

 - max
 *Maksimum sonuç sayısı. Boş girildiğinde 5 alır.*
  `/v1/search?title=Star%20Wars&imdb=5.0&max=3&page=1`

 - page
*Sayfalama.*
  `/v1/search?title=Star%20Wars&imdb=5.0&max=3&page=1`


 ## Film Ekleme ##
 
----------
**Parametreler**

> Sistemin sağlıklı bir biçimde çalışması için tüm alanların doldurulması gerekmektedir. Ama zorunlu da değildir. :p

 - title
 *String*
 - day
 *Integer*
 - month
 *Integer*
 - year
 *Integer*
 - desc
 *Text*
 - genre
 *String. (Veritabanında olması gerekiyor.)*
 - director
 *String. (Veritabanında olması gerekiyor.)*
 - imdb
 *Integer*

**Örnek**

    v1/add/film?title=Film%20Adı&day=01&month=05&year=2001&imdb=5.0&director=Cem%20Yılmaz&desc=Lorem%20ipsum%20dior%20atolye15%20&genre=Horror

## Aktör Ekleme ##

----------
**Parametreler**

> Sistemin sağlıklı bir biçimde çalışması için tüm alanların doldurulması gerekmektedir. Ama zorunlu da değildir. :p

 - name
 *String*
 - born
 *String (01-03-1997)*
 - photo
 *String*
 - gender
 *String ( M &F )*
 - bio 
 *Text*
 
 **Örnek**

`/v1/add/actor?name=Cem%20Y%C4%B1lmaz&born=23-04-1973&bio=Cem%20Y%C4%B1lmaz,%20T%C3%BCrk%20komedyen,%20oyuncu,%20m%C3%BCzisyen,%20karikat%C3%BCrist,%20senarist,%20yap%C4%B1mc%C4%B1%20ve%20y%C3%B6netmen&photo=cmylmz.jpg&gender=M`

## Tür Ekleme ##

----------

**Parametreler**

 - genre
 *String*

**Örnek**

`v1/add/genre?genre=Komedi`

## Yönetmen Ekleme ##

----------

**Parametreler**

 - name
 *String*
 - born
 *String (01-03-1997)*
 - photo
 *String*
 - gender
 *String ( M &F )*
 - bio 
 *Text*
 
 **Örnek**
  
`/v1/add/director?name=Çağan%20Irmak&born=04-04-1970&photo=caganirmak.jpg&gender=M&bio=Lorem%20ipsum%20dior%20çağan.`
