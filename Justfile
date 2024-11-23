build_left: 
	west build -s zmk/app \
	-d ".build_left" \
	-b "nice_nano_v2" \
	-- \
	-DZMK_CONFIG="/Users/harin_khakhi/Configurations/Keyboard/wireless_config/test_config/config" \
	-DSHIELD="corne_left nice_view_adapter nice_view"
	cp .build_left/zephyr/zmk.uf2 firmware/left.uf2

build_right: 
	west build -s zmk/app \
	-d ".build_right" \
	-b "nice_nano_v2" \
	-- \
	-DZMK_CONFIG="/Users/harin_khakhi/Configurations/Keyboard/wireless_config/test_config/config" \
	-DSHIELD="corne_right nice_view_adapter nice_view"
	cp .build_right/zephyr/zmk.uf2 firmware/right.uf2	