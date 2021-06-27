# ![Loading Card Cover][Loading Card Cover]
<p align="left">
  <a href="https://flutter.dev">
    <img src="https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter"
      alt="Platform" />
  </a>
  <a href="https://www.paypal.me/farhanfadila1717">
    <img src="https://img.shields.io/badge/Donate-PayPal-00457C?logo=paypal"
      alt="Donate" />
  </a>
</p><br>
Loading card is flutter package. This package can help you create a loading card display between two colors

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



[Loading Card Cover]: https://github.com/farhanfadila1717/loading_card/blob/master/display/loading_card_cover.png
[Output]: https://github.com/farhanfadila1717/loading_card/blob/master/display/loading_card.gif
