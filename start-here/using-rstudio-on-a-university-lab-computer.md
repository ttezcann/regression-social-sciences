# Using RStudio on a university lab computer

Every time you log in to a lab computer, the R script files will install all the packages again.

Because when you log out, lab computers revert to their factory settings and deletes the installed packages.

{% stepper %}
{% step %}
### Open RStudio

Type "RStudio" on the search bar of the computer.&#x20;
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
