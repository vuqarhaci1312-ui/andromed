$path = "c:\Users\hmc\Downloads\mediic-medical-hospital-and-clinic-html5-template-2025-03-02\medic-html\service.html"
$c = [System.IO.File]::ReadAllText($path)

# Service titles
$c = $c.Replace('Couple Therapy','Kardiologiya')
$c = $c.Replace('Family Counseling','Ginekologiya')
$c = $c.Replace('Parenting Skills','Fizioterapiya')
$c = $c.Replace('Anxiety Disorder','Diaqnostika')
$c = $c.Replace('Group Therapy','Radiologiya')
$c = $c.Replace('Personal Meeting','Stomatologiya')

# Button text
$c = $c.Replace('READ MORE', [char]0x018F + 'TRAFLI')

# Service descriptions - replace all 6 identical descriptions
$oldDesc = 'Professional mision capital without enterps medical
                        users pros value added e-enabled creative technology via
                        team.'

$descs = @(
    ([char]0x00DC + 'r' + [char]0x0259 + 'k-damar sisteminin m' + [char]0x00FC + 'asir diaqnostikas' + [char]0x0131 + ' v' + [char]0x0259 + ' m' + [char]0x00FC + 'alic' + [char]0x0259 + 'si. EKQ, exokardioqrafiya xidm' + [char]0x0259 + 'tl' + [char]0x0259 + 'ri.'),
    ('Qad' + [char]0x0131 + 'n sa' + [char]0x011F + 'laml' + [char]0x0131 + [char]0x011F + [char]0x0131 + ' ' + [char]0x00FC + 'zr' + [char]0x0259 + ' kompleks m' + [char]0x00FC + 'ayin' + [char]0x0259 + ' v' + [char]0x0259 + ' m' + [char]0x00FC + 'alic' + [char]0x0259 + '. Hamillik m' + [char]0x00FC + [char]0x015F + 'ahid' + [char]0x0259 + 'si.'),
    ('Fiziki reabilitasiya v' + [char]0x0259 + ' a' + [char]0x011F + 'r' + [char]0x0131 + ' m' + [char]0x00FC + 'alic' + [char]0x0259 + 'si. M' + [char]0x00FC + 'asir fizioterapevtik avadanl' + [char]0x0131 + 'qlarla xidm' + [char]0x0259 + 't.'),
    ('Laborator m' + [char]0x00FC + 'ayin' + [char]0x0259 + 'l' + [char]0x0259 + 'r, qan analizl' + [char]0x0259 + 'ri, USM v' + [char]0x0259 + ' dig' + [char]0x0259 + 'r diaqnostik ' + [char]0x00FC + 'sullar.'),
    ('Rentgen, USM, MRT v' + [char]0x0259 + ' dig' + [char]0x0259 + 'r g' + [char]0x00F6 + 'r' + [char]0x00FC + 'nt' + [char]0x00FC + 'l' + [char]0x0259 + 'm' + [char]0x0259 + ' ' + [char]0x00FC + 'sullar' + [char]0x0131 + ' il' + [char]0x0259 + ' d' + [char]0x0259 + 'qiq diaqnostika.'),
    ('Di' + [char]0x015F + ' m' + [char]0x00FC + 'alic' + [char]0x0259 + 'si, protezl' + [char]0x0259 + [char]0x015F + 'dirm' + [char]0x0259 + ', implantasiya v' + [char]0x0259 + ' a' + [char]0x011F + [char]0x0131 + 'z bo' + [char]0x015F + 'lu' + [char]0x011F + 'u sa' + [char]0x011F + 'laml' + [char]0x0131 + [char]0x011F + [char]0x0131 + '.')
)

# Replace each occurrence one by one
for ($i = 0; $i -lt 6; $i++) {
    $idx = $c.IndexOf($oldDesc)
    if ($idx -ge 0) {
        $c = $c.Remove($idx, $oldDesc.Length).Insert($idx, $descs[$i])
    }
}

# Fix service-details links - make each card link to its own page
# First occurrence already links to service-details-1.html (from batch script it became service-details.html)
# We need to fix all 6 links
$oldLink = 'service-details.html'
for ($i = 1; $i -le 6; $i++) {
    $idx = $c.IndexOf($oldLink)
    if ($idx -ge 0) {
        $newLink = "service-details-$i.html"
        $c = $c.Remove($idx, $oldLink.Length).Insert($idx, $newLink)
    }
}

[System.IO.File]::WriteAllText($path, $c, [System.Text.Encoding]::UTF8)
Write-Host "service.html updated with Andromed services!"
