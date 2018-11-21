@default_files = '0_main.tex';
$jobname = 'report_maarten_vlaswinkel';

$pdf_mode = 1;
$aux_dir = 'tmp/';
$force_mode = 0;

$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -halt-on-error -file-line-error %O %S';
$use_make_for_missing_files = 0;

$bibtex = 'bibtex --include-directory=tmp/ %O %S';

$new_viewer_always = 0;
$preview_continuous_mode = 1;

add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'slo', 'sls', 0, 'makeglossaries' );

if ($^O eq 'linux'){
  $pdf_previewer = 'start xdg-open %O %S';
  $pdf_update_method = 1;
}
else{
  $pdf_previewer = 'start "C:/Program Files/SumatraPDF/SumatraPDF.exe" %O %S';
  $pdf_update_method = 3;
}

sub makeglossaries{
  system( "makeglossaries -d $aux_dir $jobname" );
}
