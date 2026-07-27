$pdf_mode = 1;
$interaction = 'nonstopmode';
$synctex = 1;
$pdflatex = './scripts/export_svgs_for_latex.sh && pdflatex -shell-escape %O %S';

$aux_dir = 'build';
$out_dir = 'build';

add_cus_dep('glo', 'gls', 0, 'makeglossaries');
