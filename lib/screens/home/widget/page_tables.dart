import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manager_app/bloc/home/home_bloc.dart';
import 'package:manager_app/bloc/home/home_event.dart';
import 'package:manager_app/bloc/home/home_state.dart';
import 'package:manager_app/gen/colors.gen.dart';
import 'menu_note.dart';
import 'tables_widget.dart';

class PageTables extends StatelessWidget {
  final int quantityTable;
  PageTables({super.key, required this.quantityTable});

  // @override
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    int _sumTable = quantityTable;
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    int quantityPage = int.parse((quantityTable / 9).round().toString());
    return Builder(
      builder: (context) {
        final double height = MediaQuery.of(context).size.height - 520;
        return Column(
          children: [
            // Generated code for this TextField Widget...
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                // controller: _model.textController,
                // focusNode: _model.textFieldFocusNode,
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Search your table',
                  contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      // color: FlutterFlowTheme.of(context).error,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      // color: FlutterFlowTheme.of(context).error,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  fillColor: ColorName.colorGrey3,
                  suffixIcon: const Icon(
                    Icons.search,
                    color: ColorName.colorGrey4,
                    size: 28,
                  ),
                ),

                // cursorColor: FlutterFlowTheme.of(context).primaryText,
                // validator: _model.textControllerValidator.asValidator(context),
              ),
            ),

            Expanded(
                child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  homeBloc.add(
                    ChangeCarosel(index: index),
                  );
                },
                height: height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                // autoPlay: false,
              ),
              items: [
                for (int i = 0; i < quantityPage; i++)
                  if (i == quantityPage - 1) ...[
                    TablesWidget(quantityTable: _sumTable % 9, indexPage: i)
                  ] else ...[
                    TablesWidget(quantityTable: 9, indexPage: i)
                  ]
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(quantityPage, (index) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(index),
                  child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                    return Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(
                                state.indexCarousel == index ? 0.9 : 0.4),
                      ),
                    );
                  }),
                );
              }),
            ),
            const MenuNote()
          ],
        );
      },
    );
  }
}
