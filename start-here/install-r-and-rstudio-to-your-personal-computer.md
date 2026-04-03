# Install R and RStudio to your personal computer

{% stepper %}
{% step %}
## Check your macOS version

[Check your macOS version](https://support.apple.com/en-us/HT201260)
{% endstep %}

{% step %}
## **macOS 13 and higher - Apple silicon (M1-5):**

1. [Download R](https://cloud.r-project.org/bin/macosx/big-sur-arm64/base/R-4.5.3-arm64.pkg) (4.5.3)
2. [Download RStudio ](https://download1.rstudio.org/electron/macos/RStudio-2024.04.2-764.dmg)(2026.01.2+418)

### **For older Intel Macs:**

1. [Download R](https://cloud.r-project.org/bin/macosx/big-sur-arm64/base/R-4.5.3-arm64.pkg) (4.5.3)
2. [Download RStudio ](https://download1.rstudio.org/electron/macos/RStudio-2024.04.2-764.dmg)(2024.04.2+764)

{% hint style="info" %}
macOS may want you to allow it to download. Open System Preferences <mark style="color:red;">➜</mark> Security & Privacy <mark style="color:red;">➜</mark> General <mark style="color:red;">➜</mark> Allow (you may need to click the lock at the bottom to unlock).
{% endhint %}
{% endstep %}

{% step %}
## Windows users

1. [Download R](https://cloud.r-project.org/bin/macosx/big-sur-arm64/base/R-4.5.3-arm64.pkg) (4.5.3)
2. [Download RStudio ](https://download1.rstudio.org/electron/windows/RStudio-2026.01.2-418.exe)(2026.01.2+418)

{% hint style="info" %}
Windows users may need to change some of their settings.

Select Start <mark style="color:red;">➜</mark> Settings <mark style="color:red;">➜</mark> Apps <mark style="color:red;">➜</mark> Apps & features. Under Installing apps, select "Allow apps from anywhere."
{% endhint %}
{% endstep %}

{% step %}
### Download the specific R script file to install packages and load GSS data

1. Copy the code below.
2. Paste it into RStudio console.
3. Hit enter.

```r
source(url("https://raw.githubusercontent.com/ttezcann/regression-social-sciences/main/scripts/0_packages.R")); 
source(url("https://raw.githubusercontent.com/ttezcann/regression-social-sciences/main/scripts/0_load_gss_data.R")); 
download.file("https://raw.githubusercontent.com/ttezcann/regression-social-sciences/main/scripts/0_installing_packages.R", "0_installing_packages.R"); 
file.edit("0_installing_packages.R")
```

<figure><img src="../.gitbook/assets/copy_paste_enter.png" alt=""><figcaption></figcaption></figure>
{% endstep %}

{% step %}
### Wait

This process will install all the packages we’ll be using throughout the modules. This process may take **15-20 minutes** or shorter depending on your internet connection. This is a one-time process.

You won't wait this long again during the semester.

1. You will see a STOP sign.
2. And, codes are running in the console. You should wait until the 🛑 <mark style="background-color:$danger;">STOP</mark> 🛑 sign in the console disappears and no more code is running in the console.
3. When you see the script file opens and, "gss" and "key" appears under the "Environment" - Data section, everything is all set.

<figure><img src="../.gitbook/assets/stop_install_load (1).png" alt=""><figcaption></figcaption></figure>
{% endstep %}
{% endstepper %}

