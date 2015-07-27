module ProjectsHelper
  def project_badge(project)
    count = project.news_count
    badge_notifications(count)
  end

  def select_court
    @content = options_for_select(
  [
    ['JUZGADO CIVIL Y COMERCIAL N° 1 - Apremios', '1', { 'data-size' => '' }],
    ['JUZGADO CIVIL Y COMERCIAL N° 2 - Conocimiento', '2', { 'data-size' => '' }],
    ['JUZGADO CIVIL Y COMERCIAL N° 3 - Conocimiento y Electoral', '3', { 'data-size' => '' }],
    ['JUZGADO CIVIL Y COMERCIAL N° 4 - Ejecución', '4', { 'data-size' => '' }],
    ['JUZGADO CIVIL Y COMERCIAL N° 6 - Conocimiento', '5', { 'data-size' => '' }],
    ['JUZGADO CIVIL Y COMERCIAL N° 7 - Ejecución', '6', { 'data-size' => '' }],
    ['JUZGADO CIVIL Y COMERCIAL N° 8 - Ejecución', '7', { 'data-size' => '' }],
    ['JUZGADO CIVIL Y COMERCIAL N° 9 - Concurso, Quiebra y Sociedades', '8', { 'data-size' => '' }],
    ['JUZGADO CIVIL Y COMERCIAL N° 11 - Ejecución', '9', { 'data-size' => '' }],
    ['JUZGADO CIVIL Y COMERCIAL N° 12 - Conocimiento', '10', { 'data-size' => '' }],
    ['JUZGADO CIVIL Y COMERCIAL N° 13 - Conocimiento', '11', { 'data-size' => '' }],
    ['JUZGADO LABORAL N° 1', '12', { 'data-size' => '' }],
    ['JUZGADO LABORAL N° 2', '13', { 'data-size' => '' }],
    ['JUZGADO LABORAL N° 3', '14', { 'data-size' => '' }],
    ['JUZGADO LABORAL N° 4', '15', { 'data-size' => '' }],
    ['JUZGADO DE FAMILIA N° 1', '16', { 'data-size' => '' }],
    ['JUZGADO DE FAMILIA N° 2', '17', { 'data-size' => '' }],
    ['JUZGADO DE FAMILIA N° 3', '18', { 'data-size' => '' }],
    ['JUZGADO DE PAZ N° 1', '19', { 'data-size' => '' }],
    ['JUZGADO DE PAZ N° 2', '20', { 'data-size' => '' }]
  ]
    )
  end

  def court_name(nro)
    courts = ['JUZGADO CIVIL Y COMERCIAL N° 1 - Apremios',
    'JUZGADO CIVIL Y COMERCIAL N° 2 - Conocimiento',
    'JUZGADO CIVIL Y COMERCIAL N° 3 - Conocimiento y Electoral',
    'JUZGADO CIVIL Y COMERCIAL N° 4 - Ejecución',
    'JUZGADO CIVIL Y COMERCIAL N° 6 - Conocimiento',
    'JUZGADO CIVIL Y COMERCIAL N° 7 - Ejecución',
    'JUZGADO CIVIL Y COMERCIAL N° 8 - Ejecución',
    'JUZGADO CIVIL Y COMERCIAL N° 9 - Concurso, Quiebra y Sociedades',
    'JUZGADO CIVIL Y COMERCIAL N° 11 - Ejecución',
    'JUZGADO CIVIL Y COMERCIAL N° 12 - Conocimiento',
    'JUZGADO CIVIL Y COMERCIAL N° 13 - Conocimiento',
    'JUZGADO LABORAL N° 1',
    'JUZGADO LABORAL N° 2',
    'JUZGADO LABORAL N° 3',
    'JUZGADO LABORAL N° 4',
    'JUZGADO DE FAMILIA N° 1',
    'JUZGADO DE FAMILIA N° 2',
    'JUZGADO DE FAMILIA N° 3',
    'JUZGADO DE PAZ N° 1',
    'JUZGADO DE PAZ N° 2']
    courts[nro]
  end
end
