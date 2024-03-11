import "dart:io";
    import "dart:math";
        import "dart:async";

            void fetchTemperature() async {

                final response = await
                    http.get("https://vedur.is");


            if (response.statusCode == 200) {
            temp.setText(response.body);

            } else {
            temp.setText("Unknown temp");
                }
            }