FROM archlinux:latest
LABEL maintainer "Rama Bondan Prakoso <ramanarubp@gmail.com>"

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
	base-devel \
	bc \
	git \
	python \
	openssh \
	wget \
	zip

RUN git clone --depth=1 https://github.com/crdroidmod/android_prebuilts_clang_host_linux-x86_clang-6284175 /root/aosp/clang

RUN git clone --depth=1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 -b android-9.0.0_r50 /root/aosp/gcc-arm64

RUN git clone --depth=1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9 -b android-9.0.0_r50 /root/aosp/gcc-arm

RUN wget -O proton.tar.zst https://kdrag0n.dev/files/redirector/proton_clang-latest.tar.zst && \
    mkdir -p /root/llvm/clang && \
    tar -I zstd -xvf *.tar.zst -C /root/llvm/clang --strip-components=1 && \
    rm proton.tar.zst
