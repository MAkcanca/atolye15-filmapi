## Atölye15 FilmDB RESTFul API Çalışması v1.1 ##

> Ufak tefek hatalar olabilir, issue açarsanız en kısa sürede fixlerim. 

## API Key Oluşturma

Sadece ekleme,silme ve update için geçerli olan API key'i

`/v1/generate/key` adresinden alabilir, isteklerde `key` parametresi ile kullanabilirsiniz.


## Film Arama


**Parametreler**

 - title
 
	*String - Film Başlığı ile arama*

`/v1/search?title=Star%20Wars`

 - genre
 
	*String - Film türüne göre arama.*

`/v1/search?genre=Horror`

 - year
 
	*Integer - Yayın yılına göre arama.*

`/v1/search?year=2015`

 - imdb
 
	*Integer - IMDb puanına göre arama.*

`/v1/search?imdb=5.0`

 - actor
 
	*String - Oyuncuya göre arama.*

`/v1/search?actor=Cem%20Yılmaz`

 - director
 
	*String - Yönetmene göre arama.*

`/v1/search?director=Çağan%20Irmak`

 - max
 
	*Integer -Maksimum sonuç sayısı. Boş girildiğinde 5 alır.*

`/v1/search?title=Star%20Wars&imdb=5.0&max=3&page=1`

 - page
 
	*Integer - Sayfalama.*

`/v1/search?title=Star%20Wars&imdb=5.0&max=3&page=1`


## Film Ekleme
 
> Düzenleme için de aynı parametreler geçerli.
> /v1/update/film

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

`v1/add/film?title=Film%20Adı&day=01&month=05&year=2001&imdb=5.0&director=Cem%20Yılmaz&desc=Lorem%20ipsum%20dior%20atolye15%20&genre=Horror`

## Aktör Ekleme & Düzenleme

> Düzenleme için de aynı parametreler geçerli.
> /v1/update/actor

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

## Tür Ekleme 

> Düzenleme için de aynı parametreler geçerli.
> /v1/update/genre


**Parametreler**

 - genre
 
	*String*

**Örnek**

`v1/add/genre?genre=Komedi`

## Yönetmen Ekleme 



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

## Düzenleme işlemleri

Düzenleme işlemleri için kullanacağımız url'ler

- `/v1/update/film`
- `/v1/update/actor`
- `/v1/update/genre`
- `/v1/update/director`

Zorunlu olarak aldığı parametreler ise sadece  `id` ve `key`, sonrasında düzenlemek istediğiniz alanın parametresini girip düzenliyoruz. 

**Örnek**

`/v1/update/film?id=2&title=Film%20Adı&key=API_KEY`

## Silme İşlemleri

Silme işlemleri için kullanacağımız url'ler

- `/v1/delete/film`
- `/v1/delete/actor`
- `/v1/delete/genre`
- `/v1/delete/director`

Aldığı parametreler ise sadece  `id` ve `key`

## İhtiyaçlar

- Şuanlık `key` parametresini girmediğimizde herhangi bir hata vermiyor. **ModelNotFoundException** handle edemedim :p

## Teşekkürler

Etkinlikte emeği geçen herkese çok teşekkürlerimi sunarım.

© [Rıza Sabuncu](http://twitter.com/rizasabuncu) - 2015

