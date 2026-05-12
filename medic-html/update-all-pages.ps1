$dir = "c:\Users\hmc\Downloads\mediic-medical-hospital-and-clinic-html5-template-2025-03-02\medic-html"

# List of all HTML files EXCEPT index.html (already done)
$files = @(
    "service.html",
    "service-details.html",
    "about.html",
    "team.html",
    "team-details.html",
    "contact.html",
    "appointment.html",
    "testimonial.html",
    "faq.html",
    "404.html",
    "blog-grid.html",
    "blog-list.html",
    "blog-2colum.html",
    "blog-left-sidebar.html",
    "blog-details.html",
    "project.html",
    "project-details.html",
    "index-2.html"
)

foreach ($f in $files) {
    $path = Join-Path $dir $f
    if (!(Test-Path $path)) { continue }
    
    $content = Get-Content $path -Raw -Encoding UTF8
    
    # === HEAD ===
    $content = $content -replace 'lang="en-US"', 'lang="az"'
    $content = $content -replace '<title>mediic - Health Care Doctor HTML5 Template</title>', '<title>Andromed Tibb Mərkəzi</title>'
    $content = $content -replace '<title>Mediic - Health Care Doctor HTML5 Template</title>', '<title>Andromed Tibb Mərkəzi</title>'
    $content = $content -replace '<meta name="description" content="" />', '<meta name="description" content="Andromed Tibb Mərkəzi - Bakıxanov və Mərdəkan filialları" />'
    
    # === LOGO ===
    $content = $content -replace 'src="assets/images/logo\.png" alt="logo"', 'src="assets/images/andromedlogo.png" alt="Andromed" style="max-height:50px;width:auto;"'
    $content = $content -replace 'src="assets/images/logo2\.png" alt="logo"', 'src="assets/images/andromedlogo.png" alt="Andromed" style="max-height:45px;width:auto;"'
    $content = $content -replace 'src="assets/images/logo2\.png" alt=""', 'src="assets/images/andromedlogo.png" alt="Andromed" style="max-height:50px;width:auto;"'
    $content = $content -replace 'title="mediic"', 'title="Andromed"'
    
    # === DESKTOP NAV - Replace entire nav block ===
    # Remove Home dropdown
    $homeDropdown = @'
                <li>
                  <a class="mdy-hover cursor-scale small" href="#">Home </a>
                  <ul class="sub-menu">
                    <li><a href="index.html">Home Version 01</a></li>
                    <li><a href="index-2.html">Home Version 02</a></li>
                    <li><a href="https://html.tf.dreamitsolution.net/mediic/">Home Version 03</a></li>
                  </ul>
                </li>
'@
    $homeSimple = @'
                <li>
                  <a class="mdy-hover cursor-scale small" href="index.html">Ana Səhifə</a>
                </li>
'@
    $content = $content.Replace($homeDropdown, $homeSimple)
    
    # About link
    $content = $content -replace '<a class="mdy-hover cursor-scale small" href="about\.html"\s*>About</a\s*>', '<a class="mdy-hover cursor-scale small" href="about.html">Haqqımızda</a>'
    
    # Remove Pages dropdown entirely
    $pagesBlock = @'
                <li>
                  <a class="mdy-hover cursor-scale small" href="#">Pages </a>
                  <ul class="sub-menu">
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="service.html">Our Service</a></li>
                    <li><a href="team.html">Our Team</a></li>
                    <li><a href="team-details.html">Team Details</a></li>
                    <li><a href="project.html">Project</a></li>
                    <li><a href="project-details.html">Project Details</a></li>
                    <li><a href="appointment.html">Appointment</a></li>
                    <li><a href="testimonial.html">Testimonial</a></li>
                    <li><a href="404.html">404</a></li>
                    <li><a href="faq.html">Faqs</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                  </ul>
                </li>
'@
    $pagesSimple = @'
                <li>
                  <a class="mdy-hover cursor-scale small" href="service.html">Xidmətlər</a>
                </li>
                <li>
                  <a class="mdy-hover cursor-scale small" href="team.html">Həkimlərimiz</a>
                </li>
'@
    $content = $content.Replace($pagesBlock, $pagesSimple)
    
    # Remove Services dropdown
    $svcDropdown = @'
                <li>
                  <a class="mdy-hover cursor-scale small" href="#">Services </a>
                  <ul class="sub-menu">
                    <li><a href="service.html">Our Service</a></li>
                    <li><a href="service-details.html">Service Details</a></li>
                  </ul>
                </li>
'@
    $content = $content.Replace($svcDropdown, "")
    
    # Remove Blog dropdown
    $blogDropdown = @'
                <li>
                  <a class="mdy-hover cursor-scale small" href="#">Blog </a>
                  <ul class="sub-menu">
                    <li><a href="blog-grid.html">Blog Gird</a></li>
                    <li><a href="blog-list.html">Blog List</a></li>
                    <li><a href="blog-2colum.html">Blog 2Column</a></li>
                    <li><a href="blog-left-sidebar.html">Left Sidebar</a></li>
                    <li><a href="blog-details.html">Blog Details</a></li>
                  </ul>
                </li>
'@
    $content = $content.Replace($blogDropdown, "")
    
    # Contact Us nav
    $content = $content -replace '<a class="mdy-hover cursor-scale small" href="contact\.html"\s*>Contact Us</a\s*>', '<a class="mdy-hover cursor-scale small" href="contact.html">Əlaqə</a>'
    
    # Button
    $content = $content.Replace("Get Appoinment", "Randevu Al")
    
    # === MOBILE NAV ===
    $content = $content.Replace('<a class="mdy-hover" href="about.html">About</a>', '<a class="mdy-hover" href="about.html">Haqqımızda</a>')
    $content = $content.Replace('<a class="mdy-hover" href="contact.html">Contact Us</a>', '<a class="mdy-hover" href="contact.html">Əlaqə</a>')
    
    # Mobile Home dropdown
    $mHomeDropdown = @'
            <li>
              <a class="mdy-hover" href="#">Home </a>
              <ul class="sub-menu">
                <li><a href="index.html">Home Version 01</a></li>
                    <li><a href="index-2.html">Home Version 02</a></li>
                    <li><a href="https://html.tf.dreamitsolution.net/mediic/">Home Version 03</a></li>
              </ul>
            </li>
'@
    $mHomeSimple = @'
            <li><a class="mdy-hover" href="index.html">Ana Səhifə</a></li>
'@
    $content = $content.Replace($mHomeDropdown, $mHomeSimple)
    
    # Mobile Pages dropdown
    $mPagesBlock = @'
            <li>
              <a class="mdy-hover" href="#">Pages </a>
              <ul class="sub-menu">
                <li><a href="about.html">About Us</a></li>
                <li><a href="service.html">Our Service</a></li>
                <li><a href="team.html">Our Team</a></li>
                <li><a href="team-details.html">Team Details</a></li>
                <li><a href="project.html">Project</a></li>
                <li><a href="project-details.html">Project Details</a></li>
                <li><a href="appointment.html">Appointment</a></li>
                <li><a href="testimonial.html">Testimonial</a></li>
                <li><a href="404.html">404</a></li>
                <li><a href="faq.html">Faqs</a></li>
                <li><a href="contact.html">Contact Us</a></li>
              </ul>
            </li>
'@
    $mPagesSimple = @'
            <li><a class="mdy-hover" href="service.html">Xidmətlər</a></li>
            <li><a class="mdy-hover" href="team.html">Həkimlərimiz</a></li>
'@
    $content = $content.Replace($mPagesBlock, $mPagesSimple)
    
    # Mobile Services dropdown
    $mSvcDropdown = @'
            <li>
              <a class="mdy-hover" href="#">Services </a>
              <ul class="sub-menu">
                <li><a href="service.html">Our Service</a></li>
                <li><a href="service-details.html">Service Details</a></li>
              </ul>
            </li>
'@
    $content = $content.Replace($mSvcDropdown, "")
    
    # Mobile Blog dropdown
    $mBlogDropdown = @'
            <li>
              <a class="mdy-hover" href="#">Blog </a>
              <ul class="sub-menu">
                <li><a href="blog-grid.html">Blog Gird</a></li>
                <li><a href="blog-list.html">Blog List</a></li>
                <li><a href="blog-2colum.html">Blog 2Column</a></li>
                <li><a href="blog-left-sidebar.html">Left Sidebar</a></li>
                <li><a href="blog-details.html">Blog Details</a></li>
              </ul>
            </li>
'@
    $content = $content.Replace($mBlogDropdown, "")
    
    # === BREADCRUMB ===
    $content = $content.Replace('>Home<', '>Ana Səhifə<')
    $content = $content.Replace('>Our Service<', '>Xidmətlər<')
    $content = $content.Replace('>Service Details<', '>Xidmət Təfərrüatı<')
    $content = $content.Replace('>About Us<', '>Haqqımızda<')
    $content = $content.Replace('>Our Team<', '>Həkimlərimiz<')
    $content = $content.Replace('>Team Details<', '>Həkim Haqqında<')
    $content = $content.Replace('>Contact Us<', '>Əlaqə<')
    $content = $content.Replace('>Appointment<', '>Randevu<')
    
    # === FOOTER ===
    $content = $content.Replace('<h4 class="widget-title">Company</h4>', '<h4 class="widget-title">Mərkəz</h4>')
    $content = $content.Replace('<h4 class="widget-title">Useful Links</h4>', '<h4 class="widget-title">Faydalı Linklər</h4>')
    $content = $content.Replace('<h4 class="widget-title">Contacts</h4>', '<h4 class="widget-title">Əlaqə</h4>')
    $content = $content.Replace('<li><a href="index.html"> Home </a></li>', '<li><a href="index.html"> Ana Səhifə </a></li>')
    $content = $content.Replace('<li><a href="about.html"> About </a></li>', '<li><a href="about.html"> Haqqımızda </a></li>')
    $content = $content.Replace('<li><a href="service.html"> Services </a></li>', '<li><a href="service.html"> Xidmətlər </a></li>')
    $content = $content.Replace('<li><a href="blog-details.html"> Blog </a></li>', '<li><a href="team.html"> Həkimlər </a></li>')
    $content = $content.Replace('<li><a href="contact.html"> Contact </a></li>', '<li><a href="contact.html"> Əlaqə </a></li>')
    $content = $content.Replace('<li><a href="#"> Partners </a></li>', '<li><a href="service.html"> Xidmətlər </a></li>')
    $content = $content.Replace('<li><a href="testimonial.html"> Testimonial </a></li>', '<li><a href="team.html"> Həkimlərimiz </a></li>')
    $content = $content.Replace('<li><a href="appointment.html"> Appoinment </a></li>', '<li><a href="appointment.html"> Randevu </a></li>')
    $content = $content.Replace('<li><a href="#"> Privacy </a></li>', '<li><a href="contact.html"> Əlaqə </a></li>')
    
    # Footer address
    $content = $content.Replace('102/ B Street, New Elephant Road, Sandigo, USA', 'Bakıxanov qəs, Oskar Əfəndiyev küçəsi 110')
    $content = $content.Replace('<h5>Email-US</h5>', '<h5>E-poçt</h5>')
    $content = $content.Replace('example@gmail.com', 'info@andromed.az')
    $content = $content.Replace('<h5>Call Now</h5>', '<h5>Zəng edin</h5>')
    $content = $content.Replace('+123 (4567) - 890', '*5677 | 012 310 35 06')
    $content = $content.Replace('Completely promote interdependent systems for Latest', 'Andromed Tibb Mərkəzi – sağlamlığınız üçün ən yaxşı seçim.')
    $content = $content.Replace('update news this Medical.', 'Bakıxanov və Mərdəkan filiallarında xidmətinizdəyik.')
    $content = $content.Replace('Enter Your E-Mail', 'E-poçtunuzu daxil edin')
    $content = $content.Replace('Agree Terms and Condition', 'Şərtləri qəbul edirsiniz')
    
    # Footer copyright
    $content = $content.Replace('This is a sample website - mediic ©2024 - All Rights Reserved', 'Andromed Tibb Mərkəzi ©2024 - Bütün hüquqlar qorunur')
    
    # Footer social - replace href="#" in social icons (tricky, do specific patterns)
    # Sidebar contact info
    $content = $content.Replace('Contact Info</h2>', 'Əlaqə Məlumatları</h2>')
    $content = $content.Replace('Chicago 12,', 'Bakıxanov qəs,')
    $content = $content.Replace('Melborne City, USA', 'Oskar Əfəndiyev küçəsi 110')
    $content = $content.Replace('(+001) 123-456-7890', '*5677 | 012 310 35 06')
    $content = $content.Replace('>Example.com', '>info@andromed.az')
    $content = $content.Replace('Week Days:', 'Hər gün:')
    $content = $content.Replace('09.00 to 18.00 Sunday: Closed', '09:00 - 18:00')
    
    # Save
    [System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
    Write-Host "Updated: $f"
}

Write-Host "`nAll pages updated!"
