import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/base/presentation/widgets/text_field.dart';
import 'package:beneficiary/features/trading/domain/entities/trading_instrument.dart';
import 'package:beneficiary/features/trading/presentation/bloc/trading_bloc.dart';
import 'package:beneficiary/features/trading/presentation/bloc/trading_event.dart';
import 'package:beneficiary/features/trading/presentation/bloc/trading_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SymbolsPage extends StatefulWidget {
  const SymbolsPage({super.key});
  static const String routeName = '/symbols-list';

  @override
  State<SymbolsPage> createState() => _SymbolsPageState();
}

class _SymbolsPageState extends State<SymbolsPage> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initially fetch OANDA symbols.
    context.read<TradingBloc>().add(FetchOandaSymbolsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OANDA Instruments'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              controller: _searchController,
              title: 'Search Instruments',
              suffix: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  final query = _searchController.text.trim();
                  context.read<TradingBloc>().add(SearchSymbolsEvent(query));
                },
              ),
              onChanged: (value) {
                // Optionally search as user types.
                context.read<TradingBloc>().add(SearchSymbolsEvent(value));
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<TradingBloc, TradingState>(
              builder: (context, state) {
                if (state is TradingLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is TradingLoaded) {
                  final instruments = state.instruments;
                  if (instruments.isEmpty) {
                    return const Center(child: Text('No symbols found'));
                  }
                  return ListView.builder(
                    itemCount: instruments.length,
                    itemBuilder: (context, index) {
                      return TradingListItem(instrument: instruments[index]);
                    },
                  );
                } else if (state is TradingError) {
                  return Center(
                    child: Text('Error: ${state.failure.errorMessage}'),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TradingListItem extends StatelessWidget {
  final TradingInstrument instrument;

  const TradingListItem({super.key, required this.instrument});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${instrument.displaySymbol} (${instrument.symbol})"),
      subtitle: Text(instrument.description),
      trailing: Text(
        instrument.price.toStringAsFixed(4),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
