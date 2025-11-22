<#
 ____                  _            _       _____ _           
|  _ \  __ _ _ __ __ _(_) ___ _ __ ( )___  |_   _(_)_ __  ___ 
| | | |/ _` | '__/ _` | |/ _ \ '_ \|// __|   | | | | '_ \/ __|
| |_| | (_| | | | (_| | |  __/ | | | \__ \   | | | | |_) \__ \
|____/ \__,_|_|  \__,_|_|\___|_| |_| |___/   |_| |_| .__/|___/
                                                   |_|        

###############################################################################

 Title :   Install a Root CA in the Linux Trust Store (Ubuntu, Debian, RHEL, SUSE)
 Channel:  https://www.youtube.com/@darienstips9409
 Link:     https://youtu.be/mpBQlVbLPEQ

###############################################################################

#>

#### Ubuntu/Debian ############

# Install
sudo cp CA05-CA-Root.crt /usr/local/share/ca-certificates
sudo update-ca-certificates

# Check
trust list
sudo cat /etc/ssl/certs/ca-certificates.crt | grep [selectedtext]

# Remove
sudo rm /usr/local/share/ca-certificates/local-ca.crt
sudo update-ca-certificates –fresh


#### SUSE ############

# Install
sudo cp CA05-CA-Root.crt /etc/pki/trust/anchors

# Check
sudo trust list | grep -i [partofcertname]

# Remove
sudo rm /etc/pki/trust/anchors/CA05-CA-Root.crt


#### Redhat ############

# Install
sudo cp CA05-CA-Root.crt /etc/pki/ca-trust/source/anchors
sudo update-ca-trust

# Check
sudo trust list | grep -i [partofcertname]

# Remove

sudo rm /etc/pki/ca-trust/source/anchors/CA05-CA-Root.crt
sudo update-ca-trust