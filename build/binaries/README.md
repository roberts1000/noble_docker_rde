# README

This folder holds binaries that are copied into images at build time. At a minimum, you must provide files named:

1. google-chrome-stable_current_amd64.deb - A version of Chrome for linux. The latest version can be downloaded at 
                                            https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb.
                                            This file is deleted in the image once Chrome is installed.
2. chromedriver-linux64.zip               - A version of ChromeDriver that matches the version of Chrome. ChromeDriver can be 
                                            downloaded at https://sites.google.com/chromium.org/driver/.
                                            This file is deleted in the image once Chrome is installed.

Any other files you provide will be copied into `~/build/binaries`, and will be available at that loction when a container
starts.
