## [![hero][]][hero]
[![flutter][]][web flutter] [![paypal][]][paypal account] <br>
Loading card is flutter package. This package can help you create a loading card display between two colors

---

## Example
```dart
class ExampleLoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Loading Card'),
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoadingCard(
              height: 30,
              width: MediaQuery.of(context).size.width * .2,
              borderRadius: 30,
            ),
            const Padding(padding: const EdgeInsets.only(top: 24)),
            LoadingCard(
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.width - 48,
              borderRadius: 30,
            ),
            const Padding(padding: const EdgeInsets.only(top: 24)),
            LoadingCard(
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width - 48,
              borderRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
```
### Output Example
[![Output][]][Output]

---

### 🚧 Maintener 
[![account avatar][]][github account]
**Farhan Fadila**
📫 How to reach me: farhan.fadila1717@gmail.com

### ❤️ Suport Maintener
[![paypal][]][paypal account] [![badge linktree][]][linktree account]


[hero]: https://github.com/farhanfadila1717/loading_card/blob/master/display/loading_card_cover.png
[Output]: https://github.com/farhanfadila1717/loading_card/blob/master/display/loading_card.gif
[hero]:https://github.com/farhanfadila1717/flutter_package/blob/master/display/slide_coutdown/hero.gif
[output]: https://github.com/farhanfadila1717/flutter_package/blob/master/display/slide_coutdown/output.gif
[flutter]: https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter
[web flutter]: https://flutter.dev
[paypal]: https://img.shields.io/badge/Donate-PayPal-00457C?logo=paypal
[paypal account]: https://www.paypal.me/farhanfadila1717
[account avatar]: https://avatars.githubusercontent.com/u/43161050?s=80
[github account]: https://github.com/farhanfadila1717

[badge linktree]: https://img.shields.io/badge/Linktree-farhanfadila-orange
[linktree account]: https://linktr.ee/farhanfadila
