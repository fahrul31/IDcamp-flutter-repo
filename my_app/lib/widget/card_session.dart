import 'package:flutter/material.dart';
// import 'package:my_app/common/styles.dart';

class CardSession extends StatelessWidget {
  const CardSession({super.key, required this.title, required this.time});

  final String title;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: time.toLowerCase() != "live" ? 1 : 4,
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium,
                      )),
                  Flexible(
                      child: Text(time,
                          style: TextStyle(
                              color: time.toLowerCase() != "live"
                                  ? Colors.black
                                  : Colors.red)))
                ],
              ),
              const SizedBox(height: 8),
              const Text("Rp40.000",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffEF6A37),
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.account_circle, size: 16),
                  SizedBox(width: 5),
                  Text("Mr. Fluxion")
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.people_alt, size: 16),
                  SizedBox(width: 5),
                  Text("Sesi Panggilan grup (45/60)")
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.calendar_month, size: 16),
                  SizedBox(width: 5),
                  Text("Minggu, 5 Maret 2023")
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.schedule, size: 16),
                  SizedBox(width: 5),
                  Text("19.00-21.00")
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 36,
                    width: MediaQuery.of(context).size.width / 2.5 - 15,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          border: Border.all(
                              width: 2, color: const Color(0xffEF6A37))),
                      child: const Center(
                        child: Text("Detail",
                            style: TextStyle(
                                color: Color(0xffEF6A37),
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    width: MediaQuery.of(context).size.width / 2.5 - 15,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: time.toLowerCase() != "live"
                              ? const Color.fromARGB(255, 197, 197, 197)
                              : const Color(0xffEF6A37)),
                      child: Center(
                        child: Text("Gabung",
                            style: TextStyle(
                                color: time.toLowerCase() != "live"
                                    ? const Color.fromARGB(255, 104, 104, 104)
                                    : Colors.white,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
