all: update_note_modify_lds_size msgpack_test

update_note_modify_lds_size: update_note_modify_lds_size.cpp
	g++ -I ./msgpack-c/include/ $< -o $@

msgpack_test: metadata_msgpack_test.c
	gcc -I ./msgpack-c/include/ -I /home/wuxx1279/support/lib/comgr/build/include -L/home/wuxx1279/support/lib/comgr/build/ -lamd_comgr $< -o $@


