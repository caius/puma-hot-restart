.PHONY: setup
setup: releases/1/puma.rb releases/2/puma.rb releases/1/config.ru releases/2/config.ru

.PHONY: 1-active
1-active:
	ln -svhF releases/1 current

.PHONY: 2-active
2-active:
	ln -svhF releases/2 current

releases/1:
	mkdir -p releases/1

releases/2:
	mkdir -p releases/2

releases/1/puma.rb: releases/1 shared/puma.rb
	ln -sf ../../shared/puma.rb releases/1/puma.rb

releases/2/puma.rb: releases/2 shared/puma.rb
	ln -sf ../../shared/puma.rb releases/2/puma.rb

releases/1/config.ru: releases/1 shared/config.ru
	ln -sf ../../shared/config.ru releases/1/config.ru

releases/2/config.ru: releases/2 shared/config.ru
	ln -sf ../../shared/config.ru releases/2/config.ru
