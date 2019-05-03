#lang pollen

◊(define-meta title "What is money?")
◊(define-meta subtitle "It's subjective")
◊(define-meta updated "2019-05-03T06:32:07+0200Z")
◊(define-meta uuid "67cd34c5-058b-4908-a4a6-aed09aff22cc")

◊epigraph{
  ◊qt[#:author "J.P. Morgan" #:date "1912"]{
     Money is gold, and nothing else.
  }
}

Money is something completely necessary in our society, most people probably come in contact with money every day. We might worry when paying our expenses, that we don't have enough or even be glad for how much we have. But we seldom stop and think of what money really is.

Not just how the physical coins and pieces of paper are made, but why does money exist? What makes it valuable? Are there different kinds of money? And are there good and bad forms of money?

Before getting interested in cryptocurrencies I too had never asked these questions. I will try to provide some insight into this admittedly complex topic.


◊subhead{Historical examples of money}

◊todo{Switch out images to royalty free ones, alternatively replace with my own sketchy images}

First let's look at some interesting historical examples of things that has been used as money. Some are predictable but others are quite perplexing.

◊section[#:class "money-examples"]{
    ◊money["Shells"
           #:img "/images/sea-shells-1994213_640.jpg"]{
        Shells are bla bla...
    }
    ◊money["Gold coins in ancient Greece"
           #:img "https://upload.wikimedia.org/wikipedia/commons/4/40/EucratidesStatere.jpg"]{
        Gold coins...
    }
    ◊money["Rai stones"
           #:date "1000 - 1400"
           #:img "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Yap_Stone_Money.jpg/737px-Yap_Stone_Money.jpg"]{
        Rai stones...
    }
    ◊money["A 20kg copper coin"
           #:date "1644"
           #:img "https://www.riksbank.se/imagevault/publishedmedia/2b6uukujdt950gdjqfvx/Kopparmynt_1624.png"]{

        Another example of, honestly quite stupid, form of money is ◊link[largest-coin]{the world's largest coin.} It's a copper coin weighing 20kg, issued in Sweden.

        Since copper was worth much less than silver very large coins had to be made to offset the difference. At that time coins did contain raw materials according to their value, which is not the case today.
    }
    ◊money["Bank notes in hyperinflating Germany"
           #:date "1923"
           #:img "https://mondrian.mashable.com/uploads%252F2016%252F7%252F26%252Fgermaninflation_16.jpg%252Ffit-in__1440x1440.jpg?signature=lxEf1wsHHE3quSjlZbFBwlnKYjg="]{
        Bank notes
    }
    ◊money["Cigarettes in prison"
           #:date "1994"
           #:img "https://productplacementblog.com/wp-content/uploads/2019/01/Lucky-Strike-Cigarettes-in-The-Shawshank-Redemption-1-800x450.jpg"]{
        Shawshank Redemption
    }
    ◊money["Euro bank notes"
           #:date "21th century"
           #:img "https://i.dailymail.co.uk/i/pix/2016/02/16/10/004918B700000258-3449097-image-a-18_1455617645563.jpg"]{
        Notes...
    }
    ◊money["Dogecoin"
           #:date "2013"
           #:img "https://dogecoin.com/imgs/dogecoin-300.png"]{
        Created as a "joke currency" it quickly gained popularity as a tipping tool online. You can still find merchants who accept it online today for things like domain names, web hosting, VPNs or games.
    }
    ◊money["Marbles on the school yard"
           #:date "2017"
           #:img "https://images-na.ssl-images-amazon.com/images/I/81OSKE1n6gL._SL1500_.jpg"]{
        The game "rutan".
    }
}

◊(define largest-coin "https://www.riksbank.se/en-gb/about-the-riksbank/history/1600-1699/the-worlds-largest-coin/")

◊(define (money title #:img img #:date [date #f] . text)
   `(div ((class "example"))
      (img ((src ,img)))
      (div ((class "txt"))
        (h3 ,title)
        ,@text)))


◊ol{
    ◊li{Sea shells}
    ◊li{Gold coins (ancient Greeks)}
    ◊li{Rai stones (1000 - 1400)}
    ◊li{20kg copper coin (1644)}
    ◊li{Hyperinflation in Germany (1923)}
    ◊li{Cigarettes in prison (1994)}
    ◊li{Euro bank notes (21th century)}
    ◊li{Dogecoin (2013)}
    ◊li{Marbles on the school yard "Rutan" (2017)}
}


◊subhead{Bartering, and why do we need money?}


◊subhead{State theory of money}

◊em{Legal tender}

◊subhead{Subjective theory of value}


◊subhead{How is it used?}

◊ol{
    ◊li{Medium of exchange}
    ◊li{Unit of account}
    ◊li{Store of value}
}

This raises some interesting questions:

◊ul{
    ◊li{Can anything be used as money?}
    ◊li{Are there "good" and "bad" forms of money?}
}


◊subhead{What is good money?}

◊ol{
    ◊li{ ◊strong{Divisible}: Can be divided into smaller units of value.}
    ◊li{ ◊strong{Fungible}: One unit is viewed as interchangeable with another.}
    ◊li{ ◊strong{Portable}: Individuals can carry money with them and transfer it to others.}
    ◊li{ ◊strong{Durable}: An item must be able to withstand being used repeatedly.}
    ◊li{ ◊strong{Acceptable}: Everyone must be able to use the money for transactions.}
    ◊li{ ◊strong{Uniform}: All versions of the same denomination must have the same purchasing power.}
    ◊li{ ◊strong{Limited in Supply}: The supply of money in circulation ensures values remain relatively constant.}
}

◊subhead{Old}

**Legar tender**

There aren't any hard rules for what money is. This is perhaps surprising but if we look at what has been used as money historically we see things like:

* Sea shells
    <https://en.wikipedia.org/wiki/Shell_money>
* (1000 - 1400) Rai stones: <https://en.wikipedia.org/wiki/Rai_stones>
* \(1644) A 20kg copper coin: <https://www.riksbank.se/en-gb/about-the-riksbank/history/1600-1699/the-worlds-largest-coin/>
* \(19th century) Gold
* \(1923) Hyperinflation germany

    <figure>
      ![](https://mondrian.mashable.com/uploads%252F2016%252F7%252F26%252Fgermaninflation_16.jpg%252Ffit-in__1440x1440.jpg?signature=lxEf1wsHHE3quSjlZbFBwlnKYjg=){ width=400 }
      <figcaption>
        1923  
        Children stand next to a tower of 100,000 marks, equal in value to one US dollar.  
        Image: Bettmann/Getty Images
      </figcaption>
    <figure>
* \(1994) Cigarettes in prison
    Shawshank redemption <https://www.imdb.com/title/tt0111161/>
* \(21th century) Euro

    ![](https://i.dailymail.co.uk/i/pix/2016/02/16/10/004918B700000258-3449097-image-a-18_1455617645563.jpg){ width=200 }  

    21th century <https://www.dailymail.co.uk/news/article-3449097/Europe-prepares-scrap-500-note-saying-large-bills-help-fund-terrorism-denominations-kept-Russia.html>
* \(2013) Dogecoin
    Created as a "joke currency" it quickly gained popularity as a tipping tool online. You can still find merchants who accept it online today for things like domain names, web hosting, VPNs or games.
* \(2017) Marbles on the school yard "rutan"
(images of the above)

What is money changes depending on both time and place.

Money is actually a social construct. (expand on this...)
<https://thesocietypages.org/socimages/2014/04/24/money-as-a-social-construction/>
<https://hackernoon.com/money-is-a-social-construct-and-thats-why-you-should-run-a-bitcoin-full-node-ea0330cb69a5?gi=257add0b9b0b>

Therefore it's more illuminating to look at how money is used. Many economists and experts agree that money is a:

* Medium of exchange
* Unit of account
* Store of value
(images of the above with examples)


This raises some interesting questions:

* Can anything be used as money?
* Are there "good" and "bad" forms of money?
FIXME refer back to "good" and "bad"?

To fulfil the above functions money should therefore be:

1. **Divisible**: Can be divided into smaller units of value.
1. **Fungible**: One unit is viewed as interchangeable with another.
1. **Portable**: Individuals can carry money with them and transfer it to others.
1. **Durable**: An item must be able to withstand being used repeatedly.
1. **Acceptable**: Everyone must be able to use the money for transactions.
1. **Uniform**: All versions of the same denomination must have the same purchasing power.
1. **Limited in Supply**: The supply of money in circulation ensures values remain relatively constant.

(Go through the above money examples and see how they hold up)

## Divisible

+ Cigarettes can be divided into packs and individual cigarettes.

= Gold bars can be split into smaller bars or coins. Coins usually come in different denominations. Although you run into trouble if you don't have the correct denominations, you can't split a gold bar into coins on the street for example.

- This is a problem with "barter economy". How do you pay for a single piece of bread if you can only pay with cows?

## Fungible

+ Fiat is fungible by law.
- Beaver pelts aren't very fungible. Some are of higher quality and others are of lower.

## Portable

- Take the 20kg copper coin as a ridiculous example.
= Gold and paper money also isn't super portable. They're heavy and require a lot of space.
+ Digital money is portable. Money in your mobile phone is excellent.

## Durable

- Sea shells break down quickly after use.
= Fiat coins and bills are much better but they too fade and gets ripped and needs to be replaced.
+ Gold is practically indestructible.

## Acceptable

+ Fiat is near universal. Although movements towards a "cash free society" has deminished the usefuleness of cash in some places.
= Gold can be seen as an international money, but you cannot use pure gold coins to buy stuff in stores.
- School yard rubber bands only work within a small subset of students

## Uniform

+ Fiat coins and bills. Gold in specific quantities.

## Limited in supply

+ Gold
= Fiat
- Sea shells


<http://money.visualcapitalist.com/infographic-the-properties-of-money/>

Anything that fulfills these properties can be considered as money[^wikipedia]

# Functions

## Medium of Exchange

* **Definition**: Can be used to intermediate the exchange of goods and services.
* **Use**: A common ground for determining value.
* **Example**: A community uses beaver pelts as a medium to trade for other goods.

## Unit of Account

* **Definition**: A standard numerical unit of measurement of market value for goods, services, and other transactions.
* **Use**: Can be used to compare goods using a common system.
* **Example**: Housing prices in Japan can be compared using the yen as a unit of account.

## Store of Value

* **Definition**: Maintains its value over time.
* **Use**: Can be spent or exchanged at a later date without penalty.
* **Example**: An ounce of gold could buy a toga in Roman times, yet it can still buy a nice suit today.

# Properties

In other words:

1. **Divisible**: Can be divided into smaller units of value.
1. **Fungible**: One unit is viewed as interchangeable with another.
1. **Portable**: Individuals can carry money with them and transfer it to others.
1. **Durable**: An item must be able to withstand being used repeatedly.
1. **Acceptable**: Everyone must be able to use the money for transactions.
1. **Uniform**: All versions of the same denomination must have the same purchasing power.
1. **Limited in Supply**: The supply of money in circulation ensures values remain relatively constant.


Fiat money doesn't derive it's value from use as a physical commodity but from being declared by a government to be legal tender. That is it must be accepted as a form of payment within the boundaries of the country for all debts, public and private.

