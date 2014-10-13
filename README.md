#A barebones resin.io project to demonstrate running Ruby code


##Notice:

This project installs Ruby version 2.1.0 which allows you to execute Ruby applications on [Resin.io](http://resin.io).

This is a very simple project that is an example of how to run Ruby code on a Raspberry Pi. 

You can build and deploy your code on the Raspberry Pi. Other versions of Ruby are also supported by [RVM](http://rvm.io/rubies).

## Parts

The recipe for this project is as follows:
* Raspberry Pi with ethernet cable for internet connectivity and USB -> micro USB cable for power.
* Ruby source file

## Resin.io Setup & Deployment

1. If you haven't got a [Resin.io](http://resin.io) alpha account, visit [alpha.resin.io](http://alpha.resin.io) and sign up.
1. Start a new applicaton on Resin.io, name it as you want, download the .zip file, format the SD card in FAT32 and extract it to your SD card. 
1. Insert the SD card into the Raspberry Pi, connect the ethernet cable and power it up using the micro-usb cable.
1. After about 10 minutes your new device should show up on the resin.io applications dashboard.
1. Deploy an empty application. 

1. You can now clone the Hello Ruby repo:

`$ git clone https://github.com/nghiant2710/Hello-Ruby.git`

Then add the resin remote:

`$ git remote add resin git@git.staging.resin.io:<myUserName>/<myApplicationName>.git`

And finally push the code to your raspberry pi:

`$ git push resin master`