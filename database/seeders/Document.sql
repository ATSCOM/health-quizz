/****************************************************
 Temas desde la pag. 1 a la 20
 ****************************************************/
insert into
	categories
values
(null, "Fisiología");

insert into
	categories
values
(null, "Anatomía");

/****************************************************
 Nombre de los cuestionario de la pag. 1 al 20
 ****************************************************/
insert into
	quizzes (`id`, `description`, `image`, `category_id`)
values
(null, "Glóbulos bancos", null, 1);

insert into
	quizzes (`id`, `description`, `image`, `category_id`)
values
(null, "Tema ???", null, 1);

insert into
	quizzes (`id`, `description`, `image`, `category_id`)
values
(null, "Cabeza y cuello", null, 2);

insert into
	quizzes (`id`, `description`, `image`, `category_id`)
values
(null, "Tórax", null, 2);

insert into
	quizzes (`id`, `description`, `image`, `category_id`)
values
(null, "Pelvis", null, 2);

insert into
	quizzes (`id`, `description`, `image`, `category_id`)
values
(null, "Anatomía con imágenes", null, 2);

/****************************************************
 Preguntas para el cuestionario 1
 ****************************************************/
insert into
	questions
values
(
		null,
		"Un hombre de 44 años acude al servicio de urgencias con antecedentes de diarrea de 2 semanas que ha empeorado progresivamente durante los últimos días. La eliminación de orina es mínima y es ingresado en el hospital por deshidratación. En la muestra de heces, el resultado es positivo en huevos de parásitos. ¿Qué tipo de leucocitos tendrían un número elevado?",
		"Los eosinófilos constituyen aproximadamente el 2% del recuento total de leucocitos, pero son producidos en gran número en personas con infecciones parasitarias.",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Qué tipo celular migra a los lugares con inflamación para limpiar el tejido necrótico y dirigir la remodelación tisular? ",
		"Las células dendríticas son células de presentación de antígenos residentes, mientras que los eosinófilos son células débilmente fagocíticas cuyos productos (p. ej., principales proteínas básicas) pueden destruir parásitos sin que los eosinófilos los ingieran. Los macrófagos siguen el flujo de entrada inicial de neutrófilos en un lugar de inflamación. Mientras los neutrófilos ingieren un número moderado de bacterias por célula antes de morir, los macrófagos persisten en la zona, ingieren y digieren organismos infecciosos y material necrótico, y producen citocinas que dirigen la remodelación de los tejidos por los fibroblastos y otros tipos celulares.",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"En un niño de 3 años que ha sufrido frecuentes infecciones de oído se encuentran niveles reducidos de inmunoglobulina y no responde a la vacunación con toxoide tetánico. Sin embargo, el niño presenta una reactividad normal a la prueba cutánea (retardo del enrojecimiento e induración) ante un antígeno ambiental común. ¿Qué linaje celular no está funcionando con normalidad?",
		"La presencia de una reactividad normal de la prueba cutánea, que está mediada por linfocitos T, indica función normal de los macrófagos y otras células de presentación de antígenos, linfocitos T cooperadores y linfocitos T citotóxicos. Esta información, y la reducción en la producción de anticuerpo, localiza el defecto en el linaje de los linfocitos B",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Cuál es el término aplicado a la unión de IgG y complemento a un microbio invasor para facilitar el reconocimiento?",
		"La fagocitosis de bacterias se potencia por la presencia en su superficie de inmunoglobulina y productos de la cascada del complemento, que, a su vez, se unen a receptores de superficie en los fagocitos. Este «marcado» de bacterias y otras partículas para mejora de la fagocitosis se denomina opsonization",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Qué sucederá después de la presentación de antígenos por un macrófago?",
		"La presentación de un antígeno en la superficie de macrófagos o células dendríticas produce la activación de linfocitos T cooperadores. La activación de linfocitos T cooperadores inicia entonces la liberación de linfocinas que estimulan la proliferación y la activación de linfocitos T cooperadores y citotóxicos, y de linfocitos B, y la generación de anticuerpos.",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿De cuál de los siguientes es el CD4 un marcador?",
		"Los linfocitos T cooperadores CD4 reconocen el MHC de clase II + péptido en la célula de presentación. Los linfocitos T CD8 reconocen el MHC de clase I + péptido en la célula infectada",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Cuál de las siguientes afirmaciones es cierta acerca de los linfocitos T cooperadores?",
		"Los linfocitos T cooperadores son activados por la presentación de antígenos en la superficie de células de presentación de antígenos. Los linfocitos T cooperadores activan los linfocitos B para formar anticuerpos, pero los linfocitos B no son necesarios para la activación de linfocitos T cooperadores. Los linfocitos T cooperadores ayudan a los macrófagos con fagocitosis, pero no tienen capacidad de fagocítar las bacterias ",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Qué acción produce la activación del sistema del complemento?",
		"La activación del sistema del complemento produce una serie de acciones, que incluyen la opsonización y la fagocitosis por neutrófilos, la lisis de bacterias, la aglutinación de organismos, la activación de basófilos y mastocitos, y la quimiotaxis. El fragmento C5a del sistema del complemento provoca quimiotaxia de neutrófilos y macrófagos",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"Durante una respuesta inflamatoria, ¿cuál es el orden correcto de los sucesos celulares?",
		"El primer episodio celular durante un estado inflamatorio es la activación de los macrófagos tisulares. A continuación se produce una invasión de neutrófilos y monocitos, en este orden. Finalmente, aumenta la producción de leucocitos por la médula ósea",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"El otorrinolaringólogo sospecha que Andrés tiene enfermedad de Meniere, con exceso de endolinfa en el aparato vestibular y la cóclea. Hay varios tratamientos disponibles, comenzando con un simple cambio de dieta. Por ahora, el médico sugiere que Andrés limite su ingesta de sal y le indica diuréticos, que son fármacos que estimulan a los riñones para que eliminen el exceso de líquido del organismo. ¿Por qué se sugiere la limitación de la ingesta de sal como tratamiento de la enfermedad de meniere?",
		"ya que una reducción en la ingesta de sal ayuda a la disminución de la cantidad de líquido en el compartimiento extracelular porque el cuerpo retendrá menos agua. La reducción del volumen de líquido extracelular podría disminuir la acumulación de líquido interno en oído interno",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Cuáles son las fases del potencial de acción?",
		"Las señales nerviosas se transmiten mediante potenciales de acción que son cambios rápidos del potencial de membrana que se extienden rápidamente a lo largo de la membrana de la fibra nerviosa. Las sucesivas fases del potencial de acción son las siguientes; fase de reposo, fase de despolarización y fase de repolarización",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"Proteína que mantiene la miosina y actina unidas:",
		"La relación de yuxtaposición entre los filamentos de miosina y de actina es difícil de mantener. Esto se consigue con un gran número de moléculas filamentosas de una proteína denominada titina. Cada molécula de titina tiene un peso molecular de aproximadamente 3 millones, lo que hace que sea una de las mayores moléculas proteicas del cuerpo.  Estas moléculas elásticas de titina actúan como armazón que mantiene en su posición los filamentos de miosina y de actina, de modo que funcione la maquinaria contráctil del sarcómero",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Cuál es el término que emplean los fisiólogos para definir la “HOMEOSTASIS”?",
		"El fisiólogo estadounidense Walter Cannon (1871-1944) acuñó el término homeostasis para referirse al mantenimiento de unas condiciones casi constantes del medio interno. Esencialmente todos los órganos y tejidos del organismo realizan funciones que colaboran en el mantenimiento de estas condiciones relativamente constantes, por ejemplo, los pulmones aportan el oxígeno al líquido extracelular para reponer el oxígeno que utilizan las células, los riñones mantienen constantes las concentraciones de iones y el aparato digestivo aporta los nutrientes.",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Cuáles son los dos sistemas que se encargan de la regularización de las funciones corporales?",
		"El sistema nervioso está compuesto por tres partes principales: la porción de aferencia sensitiva, el sistema nervioso central (o la porción integradora) y la porción eferente motora. Los receptores sensitivos detectan el estado del cuerpo o de su entorno. Por ejemplo, los receptores de la piel nos alertan de que un objeto ha tocado la piel en cualquier punto. Las hormonas se transportan en el líquido extracelular a otras partes del cuerpo para regular las funciones celulares, por ejemplo, la hormona tiroidea aumenta la velocidad de la mayoría de las reacciones químicas de todas las células, con lo que se facilita el ritmo de la actividad corporal, mientras que la insulina controla el metabolismo de la glucosa.",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Qué es la apoptosis?",
		"La apoptosis es una muerte celular metódica que da lugar al desmontaje y fagocitosis de la célula antes de que se produzca ninguna fuga de su contenido, por lo que las células vecinas se mantienen sanas.",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Cuál de los siguientes problemas provoca en algunos pacientes con malnutrición una hemorragia excesiva en caso de lesión?",
		"Varios factores de coagulación que se forman en el hígado necesitan que la vitamina K sea funcional. La vitamina K es una vitamina liposoluble, y la absorción depende de una digestión y absorción adecuadas de los lípidos. Por tanto, cualquier estado de malnutrición podría manifestarse como un descenso de la absorción de los lípidos y produciría una disminución en la absorción de vitamina K y una reducción en la síntesis de factores de coagulación",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Qué vía de coagulación comienza con tromboplastina tisular?",
		"La vía extrínseca comienza con la liberación de tromboplastina tisular en respuesta a una lesión vascular o al contacto entre el tejido extravascular traumatizado y la sangre. La tromboplastina tisular está compuesta por fosfolípidos de las membranas del tejido.",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Cuál es el principal mecanismo por el que la heparina impide la coagulación sanguínea?",
		"La función principal de la heparina es unirse a la antitrombina III y activarla.",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"En condiciones de control, el ﬂujo a través de un vaso sanguíneo es de 100ml/min con un gradiente de presión de 49mmHg. ¿Cuál sería el ﬂujo aproximado a través del vaso después de aumentar el diámetro del mismo hasta cuatro veces lo normal, suponiendo que el gradiente de presión se mantuvo en 49mmHg?",
		"De acuerdo con la ley de Poiseuille, el ﬂujo a través de un vaso aumenta de manera proporcional al radio elevado a la cuarta potencia. Así pues, al incrementar cuatro veces el diámetro (o el radio) del vaso, aumentaría en un valor de 4 elevado a 4, es decir, 255 veces el valor normal. Así, el ﬂujo a través del vaso después de aumentar el vaso cuatro veces con respecto a lo normal se incrementaría de 100 a 25.590ml/min.",
		"",
		1
	);

insert into
	questions
values
(
		null,
		"¿Cuál de los siguientes segmentos del sistema circulatorio tiene la máxima velocidad de ﬂujo sanguíneo?",
		"La velocidad de ﬂujo sanguíneo dentro de cada segmento del sistema circulatorio es inversamente proporcional al área en sección transversal total del segmento. Como la aorta tiene el valor más pequeño de área en sección transversal total de todos los segmentos circulatorios, la velocidad de ﬂujo sanguíneo en ella es máxima.",
		"",
		1
	);

/****************************************************
 Preguntas para el cuestionario 2
 ****************************************************/
insert into
	questions
values
(
		null,
		"¿Cuáles son las capas de tejido conjuntivo que rodea al músculo esquelético?",
		"El endomisio rodea cada fibra muscular; - el perimisio agrupa las distintas fibras musculares en haces de fibras musculares; - el epimisio recubre el conjunto del músculo.",
		"",
		2
	);

insert into
	questions
values
(
		null,
		"¿Cuáles son las propiedades del músculo esquelético?",
		"Excitabilidad es la facultad de percibir un estímulo y responder al mismo, contractibilidad es la capacidad de contraerse con fuerza ante el estímulo apropiado, elasticidad es una propiedad física del músculo, extensibilidad es la facultad de estiramiento y plasticidad es cuando el músculo tiene la propiedad de modificar su estructura en función del trabajo que efectúa",
		"",
		2
	);

insert into
	questions
values
(
		null,
		"¿Cómo se compone el músculo esquelético?",
		"Células fusiformes llamadas (fibras musculares), constituidas por los siguientes elementos. Sarcolema, es la membrana celular, recorre toda la fibra muscular y en su extremo se fusiona al tendón, y este a su vez se fusiona con el hueso.",
		"",
		2
	);

insert into
	questions
values
(
		null,
		"¿Dónde se encuentra el músculo esquelético?",
		"Los músculos esqueléticos se unen a los huesos y los mueven al contraerse y relajarse en respuesta a mensajes voluntarios provenientes del sistema nervioso.",
		"",
		2
	);

insert into
	questions
values
(
		null,
		"¿Cuáles son las funciones de los músculos esqueléticos?",
		"Los tendones conectan el sistema esquelético con el sistema muscular al unir los músculos con los huesos. Cuando un músculo se contrae, el tendón actúa sobre el hueso y así provoca movimiento.",
		"",
		2
	);

/****************************************************
 Preguntas para el cuestionario 3
 ****************************************************/
insert into
	questions
values
(
		null,
		"Un hombre de 39 años ingresa inconsciente tras haber recibido un golpe en la cabeza con una pelota de tenis a nivel del pterion el cual resultó fracturado ¿Qué estructura puede resultar comprometida?",
		"D. La fractura del pterión es potencialmente mortal, puesto que se encuentran sobre estas las ramas anteriores de los vasos meníngeos medios, los cuales se sitúan en los surcos de la pared lateral de la calvaria.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Una mujer de 34 años ingresa en el hospital por dolores de cabeza intensos. La TC muestra un tumor en la fosa infratemporal. La exploración física muestra la pérdida de la sensación general de los dos tercios anteriores de la lengua, pero la salivación y el gusto no están afectados. ¿Cuál de los siguientes nervios puede ser el más afectado con la tumoración?",
		"El nervio lingual se une con el nervio cuerda del tímpano a nivel de la fosa infratemporal dando inervación sensitiva a los dos tercios anteriores de la lengua. ",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Un hombre de 47 años acude por diplopía. En el examen neurológico, el paciente no es capaz de aducir el ojo izquierdo y presenta arreflexia corneal en este mismo lado. ¿Cuál es la localización más probable de la lesión que da como resultado estos síntomas?",
		"Por la fisura orbitaria superior pasan el nervio oculomotor, nervio patético o troclear, la rama oftálmica del nervio trigémino, el nervio abducente y la vena oftálmica, La sensibilidad y los componentes motores del reflejo corneal dependen de la rama oftálmica del nervio trigémino y del nervio oculomotor.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Una mujer ingresa al hospital y manifiesta hiperacusia, ¿qué nervio se encuentra afectado?",
		"El nervio facial es el encargado de inervar al músculo estapedio, el cual a su vez es el encargado de limitar el movimiento del estribo y por tanto reducir la intensidad con la cual ingresa el sonido. ",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Un hombre de 47 años sufrió un traumatismo craneoencefálico, a la exploración física se encuentra que el paciente  presenta una constricción pupilar derecha no reactiva a la luz. La pupila izquierda es normal, así como la visión en ambos ojos. ¿En cuál de las siguientes estructuras se encuentra dicha lesión?",
		"El ganglio cervical superior proporciona inervación simpática a las regiones de la cara y del cuello. Esa inervación simpática, el estímulo de este nervio da como resultado una dilatación de la pupila durante una respuesta simpática.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Paciente de 25 años de edad recibe una puñalada profunda, en la parte posterior del cuello, ¿qué fascia se vio afectada a nivel profundo?",
		"La fascia prevertebral es la afectada ya que la puñalada se recibió en la parte posterior del cuello y después de atravesar la fascia de revestimiento la puñalada penetra en la fascia prevertebral.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Una mujer de 22 años es ingresada en el hospital con lesiones en un ojo.  Se comprueba el reflejo corneal, que está presente. ¿Cuál de los siguientes nervios es el responsable de la vía aferente de este reflejo?",
		"La vía aferente/sensorial del reflejo corneal es transportada por el nervio nasociliar. Es una rama de la división oftálmica del nervio trigémino. Los nervios frontal y lagrimal proporcionan sensibilidad cutánea a partes de la órbita y de la cara, pero no inervan la córnea. El nervio facial es una vía eferente del reflejo corneal y media el cierre de los dos ojos en respuesta a una irritación corneal. El nervio oculomotor media en la reapertura del ojo con la contracción del músculo elevador del párpado superior. El nervio óptico también inerva el ojo para el sentido de la visión y es la vía aferente del reflejo pupilar a la luz.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Un hombre de 61 años ingresa en el hospital con visión borrosa. La exploración física muestra un largo historial de pérdida gradual de su campo visual. La presión infraocular es elevada, y se llega al diagnóstico de glaucoma. ¿Cuál de los siguientes espacios recibe primero el humor acuoso secretado por el epitelio del cuerpo ciliar?",
		"La cámara posterior recibe primero las secreciones de los cuerpos ciliares. Los cuerpos ciliares producen humor acuoso y están localizados en la cámara posterior. Un incremento de producción de fluido en este lado producirá un incremento de la presión infraocular, ya que se está drenando inadecuadamente. El ángulo iridocorneal de la cámara anterior es la localización del drenaje del humor acuoso; por tanto, un bloqueo en el drenaje en esta localización producirá un incremento de la presión infraocular. La pupila es el punto de conexión entre la cámara anterior y la posterior; la colección de fluido no tiene lugar aquí, ya que sólo es una simple apertura para el paso de la luz hacia la retina. El cuerpo vítreo no está directamente conectado con la producción del humor acuoso. El saco lagrimal es el tope superior del conducto nasolagrimal que desemboca en el meato inferior de la cavidad nasal. El conducto nasolagrimal no está implicado en el aumento de la presión infraocular.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Un hombre de 57 años ingresa en urgencias con una pérdida progresiva y unilateral de la audición y ruidos en el oído afectado (tinnitus) de 4 meses de evolución. El examen radiológico revela un tumor en el ángulo pontocerebeloso. ¿Cuál de los siguientes nervios es el más probablemente afectado?",
		"Un tumor en el ángulo cerebelopontino, como un schwannoma del acústico, afectará más probablemente al nervio vestibulococlear primero y después al nervio facial. Esto excluye a los nervios vago, hipogloso, glosofaríngeo y trigémino como posibles respuestas correctas.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Una mujer de 55 años se queja de diplopía (doble visión) cuando baja las escaleras. ¿Cuál de los siguientes nervios tiene que estar dañado para producir este problema a la paciente?",
		"El nervio troclear inerva el músculo oblicuo superior, que actúa moviendo la pupila hacia abajo y lateralmente. Es el único músculo que puede deprimir la pupila cuando el ojo está en aducción. Cuando un individuo baja las escaleras, y se inicia el movimiento, la diplopía tiene lugar como resultado de un mal funcionamiento. El nervio óptico proporciona visión, y una lesión de este nervio no producirá diplopía cuando un individuo baje la escalera, aunque puede tener disminuida la visión o ver nublado. El nervio oculomotor inerva los rectos superior, inferior y medio, así como el oblicuo inferior. En general, la inervación del nervio oculomotor produce movimientos del ojo hacia arriba y hacia abajo, y una lesión de este nervio no producirá una diplopía a un individuo cuando esté bajando la escalera. El nervio abducens inerva el músculo recto lateral que abduce el ojo, y una lesión no producirá diplopía. El nervio frontal es una rama de la división oftálmica del nervio trigémino y proporciona inervación sensorial a la frente.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Un hombre de 54 años ingresa en urgencias tras resbalar en el suelo mojado y caerse. La exploración física demuestra que el paciente presenta un hematoma que se encuentra en la zona de peligro del cuero cabelludo y se disemina a la zona de los párpados. ¿Cuál de las siguientes áreas del cuero cabelludo se considera como «zona de peligro»?",
		"La pérdida de la capa de tejido conjuntivo areolar se conoce como «la zona peligrosa» porque un hematoma se puede diseminar fácilmente desde esta capa hacia el cráneo por las venas emisarias que pasan a través de los huesos del cráneo. Ninguna de las otras capas del cuero cabelludo de la lista se conoce como la «zona peligrosa».",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"El cierre prematuro de las fontanelas cerebrales del niño puede ocasionar una compresión del cerebro, restringiendo su crecimiento. ¿Cuál de las siguientes fontanelas se localiza en la unión de la sutura sagital con la coronal, y a qué edad suele cerrarse esta fontanela?",
		"La fontanela anterior se localiza en la unión de la sutura sagital con la coronal y se cierra a los 18 meses de vida. La fontanela posterior se localiza en la unión de la sutura sagital con la lambdoidea y se cierra hacia los 2 o 3 meses. La fontanela mastoidea se localiza en la unión de la sutura escamosa y la sutura lambdoidea y se cierra a finales del primer año. La fontanela esfenoidal se localiza en la unión de la sutura escamosa y la coronal y se cierra de los 2 a los 3 meses. Existe una sutura lambdoidea, pero no una fontanela lambdoidea",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Un hombre de 33 años es ingresado en el hospital con dolor de cabeza intenso, vértigo y vómitos. Los estudios radiológicos muestran la presencia de un tumor en el conducto del hipogloso. ¿Cuál de los siguientes músculos se encontrará probablemente más afectado?",
		"Un tumor en el conducto hipogloso producirá una compresión del nervio hipogloso y la afectación del músculo geniogloso, al que inerva. El palatogloso está inervado por el nervio vago y el tirohioideo está inervado por el plexo cervical (C1 a C3). El geniohioideo es inervado por el C1, que va con el nervio hipogloso tras su paso por el conducto hipogloso y por eso no estará afectado. El milohioideo está inervado por el nervio milohioideo, rama de la división mandibular del nervio trigémino.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Una mujer de 46 años ingresa en el hospital con signos de trombosis del seno cavernoso. El examen radiológico revela un tumor en la pituitaria que rodea el seno cavernoso, confirmando el diagnóstico inicial. Durante la exploración física se sospecha que el nervio abducens derecho se encuentra afectado por el tumor. ¿En qué dirección le pedirá el examinador a la paciente que gire el ojo derecho para confirmar que el nervio abducens está dañ ado, asumiendo que la paciente no podrá girar el ojo en esta dirección?",
		"El nervio abducens derecho inerva el recto lateral derecho, el cual media los movimientos hacia fuera (abducción) del ojo derecho. Los movimientos hacia dentro son mediados por el nervio oculomotor. Los movimientos hacia abajo de la línea media son producidos por la acción conjunta de los músculos oblicuo superior y recto inferior. Los movimientos hacia abajo de la pupila desde la posición aductora son función del oblicuo superior únicamente, que es inervado por el nervio troclear. Los movimientos hacia arriba y hacia abajo son mediados por una combinación de acciones del recto lateral y del recto inferior, que están inervados por los nervios abducens y oculomotor. Los movimientos hacia abajo de la pupila desde una posición lejana son el resultado de una combinación de acciones de los músculos recto inferior y oblicuo superior, inervado por los nervios oculomotor y troclear, respectivamente.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Un chico de 8 años fue sometido a una mastoidectomía extensiva tras una infección que no respondía a los antibióticos. Tras el operatorio presentó una parálisis de Bell (parálisis facial), uno de cuyos signos era que la saliva se acumulaba en el vestíbulo de la cavidad oral y la baba se caía por una esquina de la boca. ¿Cuál de los siguientes músculos tiene que estar paralizado para que se produzca este cuadro?",
		"Normalmente, el tono muscular del músculo buccinador previene la acumulación de saliva y restos de comida en el vestíbulo oral. No obstante, una lesión en el nervio facial puede paralizarlo, ya que el buccinador es el músculo m á s importante de la mejilla",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Una jugadora de tenis de 35 años ingresa en el hospital tras un golpe en la órbita. El examen radiológico muestra una fractura de la pared orbitaria medial. La exploración física también muestra que la pupila del ojo afectado no puede girar lateralmente. ¿Cuál de los siguientes músculos se encuentra atrapado por la fractura?",
		"Una fractura de la pared medial de la órbita probablemente provocaría la disfunción del recto medial, debido al atrapamiento del músculo entre los bordes de la fractura de la pared medial. El recto medial es responsable de la aducción del ojo, pero en este caso los músculos afectados hacen de anclaje del globo ocular, previniendo una excursión lateral (abducción) del ojo. No se ha producido lesión nerviosa, y el músculo no está paralizado. El músculo recto lateral es el responsable de la abducción del ojo, y el recto inferior causa la rotación inferior del globo ocular. Una lesión de estos músculos o de su inervación dar á como resultado una incapacidad para mover los ojos hacia los lados y hacia abajo, respectivamente.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"El esqueleto del cuello está constituido por las vértebras cervicales, el hueso hioides, el manubrio del esternón, los cuales forman parte del esqueleto axial, y las clavículas, las cuales por su parte hacen parte del esqueleto apendicular. La región cervical de la columna vertebral está formada por siete vértebras cervicales, que engloban la médula espinal y las meninges. Los cuerpos vertebrales, apilados y localizados centralmente, sostienen la cabeza, y las articulaciones intervertebrales proporcionan la flexibilidad necesaria para poder posicionar la cabeza. Cabe recordar que de las vértebras cervicales existen unas típicas y otras son atípicas. ¿Qué vértebras cervicales son atípicas?",
		"De las siete vértebras cervicales que forman parte del cuello, C1, C2 y C7 son vértebra a típicas también denominadas como atlas y axis respectivamente, mientras que las vértebras típicas serían C3, C4, C5 y C6.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"El hueso hioides es móvil y se sitúa en la parte anterior del cuello a nivel de la vértebra C3, en el ángulo entre la mandíbula y el cartílago tiroides. Se encuentra suspendido por músculos que lo conectan a la mandíbula, los procesos estiloides, el cartílago tiroides, el manubrio y las escápulas.Esto se denominan músculos suprahioideos e infrahioideos, ¿cuáles son los músculos suprahioideos?",
		"Los músculos suprahioideos son: músculo digástrico, músculo milohioideo, músculo estilohioideo y músculo genihioideo. Mientras que los músculos infrahioideos son: músculo milohioideo, músculo estilohioideo y músculo genihioideo.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Un hombre de 18 años ingresa inconsciente en el servicio de urgencias tras haber recibido una puñalada en la porción lateral del cuello, perforando a su vez la vaina carotídea. ¿Qué estructuras dentro de la vaina carotídea se pueden ver afectadas?",
		"La vaina carotídea es un recubrimiento tubular fascial que se extiende desde la base del cráneo hasta la raíz del cuello. Esta vaina se fusiona anteriormente con las láminas superficial y pretraqueal de la fascia, y posteriormente con la lámina prevertebral de la fascia, la vaina carotídea contiene: vena yugular, nervio vago y arteria carótida común e interna.",
		"",
		3
	);

insert into
	questions
values
(
		null,
		"Músculo que tiene su origen en el borde posterior de la apófisis estiloides, se inserta en el cuerpo del hioides en la unión con el asta mayor, está inervado por el nervio facial y hace parte del grupo de los músculos suprahioideos. ¿A qué músculo se refiere la descripción anterior?",
		"El músculo estilohioideo tiene su origen en el borde posterior de la apófisis estiloides, se inserta en el cuerpo del hioides en la unión con la asta mayor, está inervado por el nervio facial y hace parte del grupo de los músculos suprahioideos. Permite elevar y retraer al hueso hioides.",
		"",
		3
	);

/****************************************************
 Preguntas para el cuestionario 4
 ****************************************************/
insert into
	questions
values
(
		null,
		"Una mujer de 38 años acude a consultas externas y se queja de que no puede alcanzar una estantería de la despensa justo encima de su cabeza. La historia revela que se sometió a una mastectomía hace 2 meses y que no tenía este problema antes de la intervención. ¿Qué nervio se lesionó, probablemente, durante la intervención para causar estas molestias?",
		"Durante la mastectomía, pueden ligarse o lacerar tres nervios superficiales: el nervio torácico largo, el nervio intercostobraquial y el nervio toracodorsal. En caso de lesión del nervio torácico largo, la paciente tiene problemas para abducir plenamente el húmero por encima del plano horizontal. El serrato anterior (inervado por el nervio torácico largo) es necesario para elevar, rotar y abducir la escápula, para facilitar la abducción del húmero por encima del hombro. Debido a que la paciente no muestra ninguna pérdida de rotación interna o aducción del húmero, puede eliminarse la ligadura o lesión del nervio toracodorsal.",
		"",
		4
	);

insert into
	questions
values
(
		null,
		"Una mujer de 22 años sufrió una lesión torácica por el impacto del volante durante un accidente de coche. Al ingresar en el hospital, la exploración física reveló importante hinchazón, inflamación y deformación de la pared torácica. La radiografía reveló una fractura infrecuente del manubrio a nivel de la articulación manubrioesternal. ¿Cuál de las siguientes costillas estará muy probablemente afectada en esta lesión?",
		"El borde superior del manubrio se caracteriza por la escotadura yugular. Lateralmente se sitúan las articulaciones esternoclaviculares y las articulaciones de las primeras costillas con el manubrio. El segundo par de costillas se articula con el esternón en el ángulo esternal, la unión del manubrio con el cuerpo del esternón.",
		"",
		4
	);

insert into
	questions
values
(
		null,
		"La constricción bronquial es inducida por la inervación parasimpática de las vías respiratorias. Esta inervación procede de los nervios vagos, que podrían bloquearse y causar una relajación de las vías respiratorias. El nervio frénico aporta inervación motora y sensitiva al diafragma. Los nervios intercostales aportan inervación motora somática y sensitiva a los espacios intercostales correspondientes. La estimulación de la inervación simpática produce una broncodilatación. El nervio laríngeo recurrente es una rama del vago e inerva porciones de la laringe.",
		"La constricción bronquial es inducida por la inervación parasimpática de las vías respiratorias. Esta inervación procede de los nervios vagos, que podrían bloquearse y causar una relajación de las vías respiratorias. El nervio frénico aporta inervación motora y sensitiva al diafragma. Los nervios intercostales aportan inervación motora somática y sensitiva a los espacios intercostales correspondientes. La estimulación de la inervación simpática produce una broncodilatación. El nervio laríngeo recurrente es una rama del vago e inerva porciones de la laringe.",
		"",
		4
	);

insert into
	questions
values
(
		null,
		"Una mujer de 41 años ingresa en el hospital con incapacidad para hablar. Su historia personal revela que ha tenido ronquera el último mes. La radiografía de tórax revela una masa en la ventana aortopulmonar. ¿Cuál de los siguientes nervios está más probablemente comprimido?",
		"La ventana aortopulmonar y el nervio laríngeo recurrente izquierdo están muy próximos. Por tanto, una masa en, o adyacente a esta ventana probablemente comprime el nervio laríngeo recurrente izquierdo, causando la ronquera de la paciente. Los nervios esplácnicos mayores y menores nacen inferiores y posteriores a la ventana aortopulmonar y, por tanto, es menos probable que se compriman. Los nervios esplácnicos torácicos no intervienen en la inervación de la laringe. Aunque el vago se encarga de la inervación de la laringe, pasa dorsal al área de la ventana aortopulmonar y no es probable que se comprima.",
		"",
		4
	);

insert into
	questions
values
(
		null,
		"Una paciente sometida a una mastectomía radical con disección axilar extensa muestra una escápula alada cuando hace resistencia contra un objeto fijo, como una pared. ¿La lesión de cuál de los siguientes nervios producirá este trastorno?",
		"Una mujer de 41 años ingresa en el hospital con incapacidad para hablar. Su historia personal revela que ha tenido ronquera el último mes. La radiografía de tórax revela una masa en la ventana aortopulmonar. ¿Cuál de los siguientes nervios está más probablemente comprimido?",
		"",
		4
	);

insert into
	questions
values
(
		null,
		"Identifique cual es músculo que corresònde al número 7",
		"el músculo recto anterior del abdomen se extiende por la parte frontal del abdomen, tiene 4 vientres musculares separados por bandas tendinosas, está separado de su compañero por la línea alba",
		"",
		4
	);

insert into
	questions
values
(
		null,
		"Una paciente de 29 años aqueja dolor intenso que irradia a espalda y tórax. A la exploración física, se observa una erupción cutánea característica de una infección por herpes zóster por la zona superior izquierda de la espalda y que cruza el pezón izquierdo. ¿Cuál de las siguientes raíces de los nervios espinales libera el virus activo?",
		"El dermatoma que engloba el pezón está inervado por el nervio espinal T4. En este caso, el virus del herpes zóster se aloja en el ganglio de la raíz dorsal de T4 y puede activarse para causar la erupción característica que se distribuye por el dermatoma que incluye el pezón",
		"",
		4
	);

insert into
	questions
values
(
		null,
		"Una mujer de 34 años ingresa en cirugía con una masa palpable en la mama derecha y adenopatías axilares. Los estudios radiológicos y la biopsia revelan un carcinoma de mama. ¿Qué grupo de nódulos linfáticos axilares es el primero en recibir el drenaje linfático del tejido secretor de la mama y, por tanto, el que más probablemente tendrá células tumorales?",
		"El drenaje linfático de la mama se realiza en los nódulos linfáticos axilares, más específicamente los nódulos linfáticos anteriores (pectorales). Los vasos linfáticos de los nódulos linfáticos pectorales continúan en los nódulos axilares centrales, cuyo drenaje pasa hacia el nódulo apical, justo inferior a la clavícula en el triángulo deltopectoral. Desde estos nódulos, la linfa pasa a los nódulos «centinela»o escaleno y al tronco linfático subclavio. Los nódulos axilares laterales y posteriores normalmente no reciben drenaje linfático de la mama, sino de la extremidad superior. (Ésta es la razón del edema de la extremidad superior que se produce después de una mastectomía, en la que puede producirse una extirpación total de los nódulos linfáticos axilares.) ",
		"",
		4
	);

/****************************************************
 Preguntas para el cuestionario 5
 ****************************************************/
insert into
	questions
values
(
		null,
		"Un hombre de 25 años es ingresado por dolor testicular. La exploración física muestra el testículo derecho hinchado e inflamado. La exploración mediante tomografía computarizada (TC) muestra una acumulación de líquido en la cavidad de la fascia espermática interna. ¿Cuál de las siguientes condiciones describe más adecuadamente los signos observados en el paciente?",
		"El hidrocele es el resultado de un exceso de fluido en el interior de un proceso vaginal persistente. El hidrocele puede resultar de la lesión del test í culo o de la retención de un proceso que se rellena con líquido en los niños. La túnica vaginal está formada por una capa parietal y otra visceral, y esta última se encuentra estrechamente fijada al test í culo y al epidídimo. La acumulación de líquido se produce en la cavidad situada entre estas dos capas. El varicocele consiste en la presencia de venas varicosas del plexo pampiniforme, y se asocia con una presión venosa incrementada en la vena testicular, seguida de la acumulación y coagulación de la sangre venosa.",
		"",
		5
	);

insert into
	questions
values
(
		null,
		"Una mujer de 33 años se encuentra en el tercer estadio del parto. El obstetra se muestra preocupado porque el canal pélvico es demasiado estrecho para un parto vaginal. ¿Cuál de las siguientes dimensiones es la más fiable para determinar la capacidad para un parto vaginal?",
		"La distancia interespinosa es la distancia entre las espinas isquiáticas. Suele ser el diámetro menor, por lo que representa el área restrictiva del canal del parto. El diámetro conjugado verdadero es la distancia anteroposterior, y no experimenta cambios. El diámetro transverso, el diámetro oblicuo y el conjugado diagonal pueden cambiar ligeramente durante el embarazo, pero es el interespinoso el que se modifica durante el parto. Además, es el que se mide con mayor facilidad.",
		"",
		5
	);

insert into
	questions
values
(
		null,
		"Una mujer de 41 años ingresa en el hospital con una masa en el ovario derecho. Se realiza una ovariectomía y se extirpan los nódulos linfáticos de la pared pelviana lateral. Al cuarto día del postoperatorio, la paciente refiere espasmos dolorosos de los músculos aductores del muslo y déficit sensitivo en la parte medial distal del muslo. ¿Cuál de los siguientes nervios es el que se ha afectado con mayor probabilidad?",
		"El nervio obturador inerva los aductores mayores de la pierna y la piel de la cara externa del muslo distal. La lesión del nervio obturador es la causa más frecuente de déficit sensitivo y motor experimentado por este paciente. El nervio genitofemoral es motor para el m ú sculo crem á ster y sensitivo para la piel que recubre el tri á ngulo femoral. El nervio ilioinguinal inerva la piel sobre el labio mayor y la parte interna alta del muslo. El nervio iliohipogástrico inerva la piel de la región glútea anterolateral, así como una tira del área por encima del pubis. El tronco lumbosacro contiene fibras sensitivas y motoras desde L4 y L5, y es la contribución lumbar al plexo lumbosacro.",
		"",
		5
	);

insert into
	questions
values
(
		null,
		"Un hombre de 40 años acude al ambulatorio de urología para realizarse un procedimiento de vasectomía. Dos meses después, el paciente acude de nuevo refiriendo dolor en el testículo. Se establece el diagnóstico de síndrome de dolor post vasectomía. ¿Cuál de los siguientes nervios fue lesionado con mayor probabilidad?",
		"Las aferencias del testículo y de la mayor í a de los conductos acompa ñ an a los simp á ticos para penetrar en la cadena en T10- L2, con los cuerpos celulares situados en los ganglios de las ra í ces dorsales de estos nervios espinales (es por esta raz ó n por lo que una patada en los test í culos parece doler tan terriblemente en la parte superior del vientre). La porción más proximal de los conductos tienen fibras sensitivas en los esplácnicos pélvicos. El nervio ilioinguinal es somático, e inerva la parte superior y medial del muslo, así como el escroto anterior y la piel a la altura de la raíz del pene, pero no el conducto deferente. El nervio iliohipogástrico es un nervio de la pared abdominal anterior que inerva los m ú sculos transverso y oblicuo abdominal, inerva la piel por encima del pubis y tiene una inervaci ó n cut á nea para la parte lateral de las nalgas. La rama genital del nervio genitofemoral proporciona inervación al músculo cremáster y al escroto.",
		"",
		5
	);

insert into
	questions
values
(
		null,
		"Un hombre de 34 años ingresa en la sala de cirugía para la corrección de una hernia inguinal. Durante la exploración física, se aprecia una hernia indirecta, junto con la ausencia de reflejo cremastérico. ¿Cuál de los siguientes nervios transporta el componente eferente del reflejo cremastérico?",
		"El reflejo cremastérico aferente es transportado por el nervio ilioinguinal. La salida motora (eferente) se produce a través del nervio genitofemoral. Las fibras sensitivas del nervio genitofemoral son para la piel que recubre el triángulo femoral. El nervio ilioinguinal es sensitivo para partes de la región suprapúbica, perinéanterior y muslo interno. El nervio iliohipogástrico proporciona sensibilidad a la pared abdominal anterior y al á rea suprapúbica. Los nervios pudendo y obturador no discurren através del conducto inguinal, y no pueden resultar dañados por una hernia. Además, no desempeñan ningún papel en el reflejo cremastérico",
		"",
		5
	);

/****************************************************
 Preguntas para el cuestionario 6
 ****************************************************/
insert into
	questions
values
(
		null,
		"¿Cuál es la estructura señalada con color amarillo y cuál es su contenido?",
		"Se puede observar que esta estructura es  perteneciente al hueso esfenoides, por ende no es la lámina cribosa, además, esta estructura no toma forma de agujero o foramen, así se pueden descartar las últimas dos opciones.",
		"",
		6
	);

insert into
	questions
values
(
		null,
		"Nombre de la articulación señalada y mencionar las bolsas que esta contiene ",
		"En la imagen se puede observar dos superficies articulares; la cabeza del hueso húmero y la cavidad glenoidea del hueso escápula. Estas estructuras relacionadas corresponden a la articulación glenohumeral, en cuanto a las bolsas, esta articulación contará con tres; Subdeltoidea, subescapular y subacromial.",
		"",
		6
	);

insert into
	questions
values
(
		null,
		"Seleccione la opción con la información verdadera sobre el capítulo del hueso húmero: ",
		"El capítulo del húmero es una superficie articular,se encuentra relacionada al radio, por ende, su ubicación en lateral.",
		"",
		6
	);

insert into
	questions
values
(
		null,
		"¿Cuál es la estructura señalada con el número 49? ?¿Con qué otras estructuras tiene relación?",
		"En la imagen se puede apreciar que se ubica en la parte posterior del hueso húmero, por ende, se puede apreciar este surco, llamado surco para el nervio radial, ya que esta estructura lo envuelve junto a la arteria braquial profunda porque estos en sus recorridos están íntimamente relacionados.",
		"",
		6
	);

insert into
	questions
values
(
		null,
		"¿Cuál es la estructura marcada con el número 28?",
		"rimero se ubica la posición en anterior, en este plano se pueden ver los músculos flexores, después de esto, se evalúa el origen, este se ve en la cara anterior de la ulna y si se recorre se puede ver su inserción en la tercera falange de los últimos cuatro dedos. Un dato importante a recordar es que el tendón de este músculo es perforante.",
		"",
		6
	);

insert into
	questions
values
(
		null,
		"¿Cuál es la estructura señalada con el número 9 y cuál es su función?",
		"La imagen del antebrazo y mano se encuentra en un plano posterior por ende se encontrarán los músculos extensores, estos a su vez poseen una estructura que les brinda sostén o soporte, llamada retináculo de los extensores o retináculo extensor",
		"",
		6
	);

insert into
	questions
values
(
		null,
		"Una mujer de 17 años ingresa en el hospital con amigdalitis. Se le realiza una amigdalectomía y en el postoperatorio la paciente se queja de dolor en el oído. ¿Cuál de los siguientes nervios se habrán dañado durante el proceso quirúrgico?",
		"Ya que el nervio glosofaríngeo interviene en la sensación general somática de la faringe, el conducto auditivo y el oído medio. La sensación de dolor de la faringe, incluido el conducto auditivo, puede ser referida al oído a través de este nervio, como en este caso de amigdalectomía. El nervio auriculotemporal inerva la piel de la aurícula, la membrana timpánica y el cuero cabelludo. El nervio vago media la sensibilidad somática general que proporciona al conducto auditivo externo y a la oreja; una estimulación del conducto puede producir reflejos como el vómito o la tos. La cuerda del tímpano transporta el gusto de los dos tercios anteriores de la lengua.",
		"",
		6
	);

insert into
	questions
values
(
		null,
		"Un hombre de 31 años ingresa en el hospital por un intenso dolor de cabeza y problemas en la visión. El músculo dilatador de la pupila, las fibras musculares lisas del músculo tarsal superior (de Müller, parte del elevador palpebral superior) y las fibras musculares lisas de los vasos sanguíneos y el cuerpo ciliar están inervados por fibras nerviosas eferentes. ¿Cuál de las siguientes estructuras contiene cuerpos celulares neuronales de estas fibras?",
		"La respuesta correcta es la E, ya que el dilatador de la pupila, el elevador del párpado superior y las células musculares lisas de los vasos sanguíneos en el cuerpo ciliar reciben inervación simpática. Los cuerpos celulares postsinápticos de las neuronas simpáticas que inervan estas estructuras están localizados en el ganglio cervical superior.",
		"",
		6
	);

insert into
	questions
values
(
		null,
		"Un lactante de 3 meses es ingresado en el hospital porque no para de llorar. Durante la exploración física se observa que tiene el ojo derecho seco. Basado en pruebas de imagen, el diagnóstico neuro oftalmológico muestra una lesión en los cuerpos celulares neuronales de los axones preganglionares del ganglio pterigopalatino. ¿Cuál de las siguientes estructuras contiene cuerpos celulares neuronales de los axones preganglionares?",
		"Ya que los cuerpos neuronales cuyos axones hacen sinapsis en el ganglio pterigopalatino se localizan en el núcleo salivatorio superior, que se encuentra en el puente; este núcleo proporciona las fibras EVG del nervio facial. El ganglio cervical superior es un ganglio simpático que contiene neuronas posganglionares, y no tiene nada que ver con el ganglio pterigopalatino. El núcleo de Edinger-Westphal se localiza en el mesencéfalo y contiene neuronas EVG del nervio oculomotor. El núcleo salivatorio inferior se localiza en la médula oblonga y da origen a las fibras EVG del nervio glosofaríngeo hasta el ganglio ótico. ",
		"",
		6
	);

insert into
	questions
values
(
		null,
		"Un hombre de 56 años es llevado inconsciente a urgencias tras haberse caído de un árbol. Una TC muestra una fractura de la lámina cribosa. ¿Cuál de las siguientes alteraciones es la más probable que se observe durante la exploración física?",
		"dado que los axones de los nervios olfatorios discurren directamente a través de la lámina cribosa para hacer sinapsis en el bulbo olfatorio. Una lesión en esta lámina puede dañar los axones nerviosos, causando anosmia (pérdida de la sensibilidad olfatoria). Una fractura de la lámina cribosa no atrapara el globo ocular. La hiperacusia puede ocurrir seguida de una parálisis del músculo estapedio. La lesión del nervio vestibulococlear puede causar acúfenos y/o sordera.",
		"",
		6
	);

insert into
	questions
values
(
		null,
		"Una mujer de 27 años ingresa en urgencias tras caerse de la moto. La radiografía revela una fractura mandibular de tipo I de Lefort y una fractura de la ATM. A pesar de la reconstrucción quirúrgica, la paciente desarrolla hiperacusia (sensibilidad a sonidos bajos) debido a la par á lisis del nervio facial. ¿Cuál de los siguientes músculos es más probable que sufra parálisis?",
		"Ya que tanto el estapedio como el tensor del tímpano tienen como función amortiguar los movimientos del oído medio, por lo que previenen hiperacusias y sonidos mudos. El estapedio será el origen de la hiperacusia en este problema porque recibe inervación del nervio facial. El tensor del tímpano recibe inervación motora de la división mandibular del nervio trigémino. El vientre posterior del digástrico y el estilohioideo reciben inervación del nervio facial, pero sus parálisis no causarán hiperacusia. ",
		"",
		6
	);

/****************************************************
 Respuestas para los cuestionarios
 ****************************************************/
insert into
	answers
values
(null, "Eosinófilos", 1, 1);

insert into
	answers
values
(null, "Neutrófilos", 0, 1);

insert into
	answers
values
(null, "Linfocitos T", 0, 1);

insert into
	answers
values
(null, "Linfocitos B", 0, 1);

insert into
	answers
values
(null, "Monocitos", 0, 1);

insert into
	answers
values
(null, "Neutrófilos", 0, 2);

insert into
	answers
values
(null, "Macrófagos", 1, 2);

insert into
	answers
values
(null, "Células dendríticas", 0, 2);

insert into
	answers
values
(null, "Eosinófilos", 0, 2);

insert into
	answers
values
(null, "Macrófagos", 0, 3);

insert into
	answers
values
(null, "Linfocitos T cooperadores", 0, 3);

insert into
	answers
values
(null, "Linfocitos T citotóxicos", 0, 3);

insert into
	answers
values
(null, "Linfocitos B", 1, 3);

insert into
	answers
values
(null, "Quimiocinesia", 0, 4);

insert into
	answers
values
(null, "Opsonización", 1, 4);

insert into
	answers
values
(null, "Fusión de fagolisosomas", 0, 4);

insert into
	answers
values
(null, "Transducción de señal", 0, 4);

insert into
	answers
values
(null, "Generación directa de anticuerpos", 0, 5);

insert into
	answers
values
(
		null,
		"Activación de linfocitos T citotóxicos",
		0,
		5
	);

insert into
	answers
values
(null, "Aumento en la fagocitosis", 0, 5);

insert into
	answers
values
(
		null,
		"Activación de los linfocitos T cooperadores",
		1,
		5
	);

insert into
	answers
values
(null, "Linfocitos B", 0, 6);

insert into
	answers
values
(null, "Linfocitos T citotóxicos", 0, 6);

insert into
	answers
values
(null, "Linfocitos T cooperadores", 1, 6);

insert into
	answers
values
(null, "Un macrófago activado", 0, 6);

insert into
	answers
values
(null, "Un neutrófilo precursor", 0, 6);

insert into
	answers
values
(
		null,
		"Se activan por la presentación de antígenos por una célula infectada",
		0,
		7
	);

insert into
	answers
values
(
		null,
		"Necesitan la presencia de un sistema competente de linfocitos B",
		0,
		7
	);

insert into
	answers
values
(
		null,
		"Destruyen bacterias por fagocitosis",
		0,
		7
	);

insert into
	answers
values
(
		null,
		"Se activan por la presentación de antígenos por macrófagos o células dendríticas.",
		1,
		7
	);

insert into
	answers
values
(null, "Unión del microbio invasor con IgG", 0, 8);

insert into
	answers
values
(null, "Inactivación de eosinófilos", 0, 8);

insert into
	answers
values
(
		null,
		"Disminución de niveles de complemento tisulares",
		0,
		8
	);

insert into
	answers
values
(
		null,
		"Generación de sustancias quimiotácticas",
		1,
		8
	);

insert into
	answers
values
(
		null,
		"Filtración de monocitos de la sangre, aumento de la producción de neutrófilos, activación de los macrófagos tisulares, infiltración de neutrófilos de la sangre.",
		0,
		9
	);

insert into
	answers
values
(
		null,
		"Activación de macrófagos tisulares, infiltración de neutrófilos de la sangre, infiltración de monocitos de la sangre, aumento en la producción de neutrófilos.",
		1,
		9
	);

insert into
	answers
values
(
		null,
		"Aumento de la producción de neutrófilos, activación de macrófagos tisulares, infiltración de neutrófilos de la sangre, infiltración de monocitos de la sangre.",
		0,
		9
	);

insert into
	answers
values
(
		null,
		"Infiltración de neutrófilos de la sangre, activación de macrófagos tisulares, infiltración de monocitos de la sangre, aumento de la producción de neutrófilos.",
		0,
		9
	);

insert into
	answers
values
(
		null,
		"La sal genera ataques de vértigo que duran de forma típica hasta una hora y comienza sin advertencia.",
		0,
		10
	);

insert into
	answers
values
(
		null,
		"Porque es el principal síntoma de vértigo que provoca un mareo breve precedido de un cambio en la posición.",
		0,
		10
	);

insert into
	answers
values
(
		null,
		"porque la porción auditiva de oído interna se torna sensibles al consumo excesivo de esta",
		0,
		10
	);

insert into
	answers
values
(
		null,
		"La reducción de la ingesta de sal disminuye la cantidad del líquido en el compartimiento extracelular.",
		1,
		10
	);

insert into
	answers
values
(null, "Fase de reposo", 0, 11);

insert into
	answers
values
(null, "Fase de despolarización", 0, 11);

insert into
	answers
values
(null, "Fase de repolarización", 0, 11);

insert into
	answers
values
(null, "Todas las anteriores", 1, 11);

insert into
	answers
values
(null, "Proteína titina", 1, 12);

insert into
	answers
values
(null, "Proteína mioglobina", 0, 12);

insert into
	answers
values
(null, "Proteína troponina ", 0, 12);

insert into
	answers
values
(
		null,
		"Mantenimiento correcto de los eritrocitos en el plasma.",
		0,
		13
	);

insert into
	answers
values
(
		null,
		"Mantenimiento de condiciones adecuadas en los seres vivos.",
		0,
		13
	);

insert into
	answers
values
(
		null,
		"Mantenimiento del control cinético.  ",
		0,
		13
	);

insert into
	answers
values
(null, "Mantenimiento del líquido graso.", 0, 13);

insert into
	answers
values
(
		null,
		"Mantenimiento de unas condiciones casi constantes del medio interno.",
		1,
		13
	);

insert into
	answers
values
(
		null,
		"Sistema nervioso y sistema tegumentario.  ",
		0,
		14
	);

insert into
	answers
values
(
		null,
		"Sistema tegumentario y aparato locomotor.  ",
		0,
		14
	);

insert into
	answers
values
(
		null,
		"Sistema nervioso y sistemas hormonales.",
		1,
		14
	);

insert into
	answers
values
(null, "Exceso de sangre.", 0, 15);

insert into
	answers
values
(null, "Producción de hemoglobina.", 0, 15);

insert into
	answers
values
(null, "Muerte celular programada", 1, 15);

insert into
	answers
values
(
		null,
		"Producción de azúcar de la sangre. ",
		0,
		15
	);

insert into
	answers
values
(null, "Explotación de energía ATP.", 0, 15);

insert into
	answers
values
(null, "Deﬁciencia de vitamina K", 1, 16);

insert into
	answers
values
(
		null,
		"Secuestro de plaquetas por hígado graso",
		0,
		16
	);

insert into
	answers
values
(
		null,
		"Bilirrubina sérica que eleva la trombina de neutralización",
		0,
		16
	);

insert into
	answers
values
(
		null,
		"Bajos niveles séricos de proteínas que provocan problemas del factor XIII",
		0,
		16
	);

insert into
	answers
values
(null, "Vía extrínseca", 1, 17);

insert into
	answers
values
(null, "Vía intrínseca", 0, 17);

insert into
	answers
values
(null, "Vía común", 0, 17);

insert into
	answers
values
(null, "Estabilización de ﬁbrina", 0, 17);

insert into
	answers
values
(null, "Activación de antitrombina III", 1, 18);

insert into
	answers
values
(
		null,
		"Unión e inhibición de factor tisular",
		0,
		18
	);

insert into
	answers
values
(null, "Unión de calcio disponible", 0, 18);

insert into
	answers
values
(
		null,
		"Inhibición del factor de activación de plaquetas",
		0,
		18
	);

insert into
	answers
values
(null, "300ml/min", 0, 19);

insert into
	answers
values
(null, "1.590ml/min", 0, 19);

insert into
	answers
values
(null, "1.000ml/min", 0, 19);

insert into
	answers
values
(null, "16.000ml/min", 0, 19);

insert into
	answers
values
(null, "25.590ml/min", 1, 19);

insert into
	answers
values
(null, "Aorta", 1, 20);

insert into
	answers
values
(null, "Arterias", 0, 20);

insert into
	answers
values
(null, "Capilares", 0, 20);

insert into
	answers
values
(null, "Vénulas", 0, 20);

insert into
	answers
values
(null, "Venas", 0, 20);

insert into
	answers
values
(
		null,
		"Capas plexiformes interna, una capa transversal media y una gruesa capa longitudinal externa.",
		0,
		21
	);

insert into
	answers
values
(
		null,
		"Capa externa dura y capa interna esponjosa que contiene médula roja",
		0,
		21
	);

insert into
	answers
values
(
		null,
		"Capa endomisio, capa perimisio y capa epimisio",
		1,
		21
	);

insert into
	answers
values
(null, "Excitabilidad, conductibilidad.", 0, 22);

insert into
	answers
values
(
		null,
		"Automatismo, contractilidad y relajación.",
		0,
		22
	);

insert into
	answers
values
(
		null,
		"Excitabilidad, contractibilidad, elasticidad, extensibilidad, plasticidad.",
		1,
		22
	);

insert into
	answers
values
(
		null,
		"Células actina, miosina, filamentos y membrana celular",
		0,
		23
	);

insert into
	answers
values
(
		null,
		"Células musculares ramificadas, que poseen 1 o 2 núcleos",
		0,
		23
	);

insert into
	answers
values
(
		null,
		"Células alargadas que se organizan en fascículos",
		1,
		23
	);

insert into
	answers
values
(
		null,
		"Se encuentran unidos a los extremos de los huesos",
		1,
		24
	);

insert into
	answers
values
(
		null,
		"Se encuentra en las paredes de órganos",
		0,
		24
	);

insert into
	answers
values
(
		null,
		"Se encuentra en las paredes del corazón",
		0,
		24
	);

insert into
	answers
values
(
		null,
		"Contrae el corazón para bombear sangre",
		0,
		25
	);

insert into
	answers
values
(
		null,
		"Mueve los huesos y otras estructuras",
		1,
		25
	);

insert into
	answers
values
(
		null,
		"Forma órganos como el estómago y la vejiga cambiando de forma para facilitar las funciones corporales.",
		0,
		25
	);

insert into
	answers
values
(null, "Arteria meníngea Media", 0, 26);

insert into
	answers
values
(
		null,
		"Rama de la arteria temporal profunda",
		0,
		26
	);

insert into
	answers
values
(
		null,
		"Rama de la arteria temporal superficial",
		0,
		26
	);

insert into
	answers
values
(
		null,
		"Ramas anteriores de los vasos meníngeos medios",
		1,
		26
	);

insert into
	answers
values
(null, "Nervio petroso menor ", 0, 27);

insert into
	answers
values
(null, "Nervio glosofaríngeo ", 0, 27);

insert into
	answers
values
(
		null,
		"Lingual proximal a la unión con la cuerda del tímpano. ",
		1,
		27
	);

insert into
	answers
values
(null, "Nervio cuerda del tímpano ", 0, 27);

insert into
	answers
values
(null, "Fisura orbitaria superior ", 1, 28);

insert into
	answers
values
(null, "Agujero oval ", 0, 28);

insert into
	answers
values
(null, "Conducto óptico ", 0, 28);

insert into
	answers
values
(null, "Fisura orbitaria inferior ", 0, 28);

insert into
	answers
values
(null, "Nervio Trigemino", 0, 29);

insert into
	answers
values
(null, "Nervio cuerda del tímpano", 0, 29);

insert into
	answers
values
(null, "Nervio Facial", 1, 29);

insert into
	answers
values
(null, "Nervio Vago", 0, 29);

insert into
	answers
values
(null, "Ganglio cervical superior.", 1, 30);

insert into
	answers
values
(null, "Ganglio de Gasser  ", 0, 30);

insert into
	answers
values
(null, "Nervio oculomotor ", 0, 30);

insert into
	answers
values
(null, "Nervio Vago ", 0, 30);

insert into
	answers
values
(null, "Fascia prevertebral ", 1, 31);

insert into
	answers
values
(null, "Fascia pretraqueal", 0, 31);

insert into
	answers
values
(null, "Fascia de revestimiento ", 0, 31);

insert into
	answers
values
(null, "Fascia infrahioidea ", 0, 31);

insert into
	answers
values
(null, "Frontal.", 0, 32);

insert into
	answers
values
(null, "Lagrimal", 0, 32);

insert into
	answers
values
(null, "Nasociliar.", 1, 32);

insert into
	answers
values
(null, "Oculomotor.", 0, 32);

insert into
	answers
values
(null, "Óptico.", 0, 32);

insert into
	answers
values
(null, "Cámara anterior.", 0, 33);

insert into
	answers
values
(null, "Cámara posterior.", 1, 33);

insert into
	answers
values
(null, "Pupila.", 0, 33);

insert into
	answers
values
(null, "Vítreo.", 0, 33);

insert into
	answers
values
(null, "Saco lagrimal.", 0, 33);

insert into
	answers
values
(null, "Vago.", 0, 34);

insert into
	answers
values
(null, "Hipogloso.", 0, 34);

insert into
	answers
values
(null, "Vestibulococlear.", 1, 34);

insert into
	answers
values
(null, "Glosofaríngeo.", 0, 34);

insert into
	answers
values
(null, "Trigémino.", 0, 34);

insert into
	answers
values
(null, "Óptico.", 0, 35);

insert into
	answers
values
(null, "Oculomotor.", 0, 35);

insert into
	answers
values
(null, "Abducens.", 0, 35);

insert into
	answers
values
(null, "Troclear.", 1, 35);

insert into
	answers
values
(null, "Frontal.", 0, 35);

insert into
	answers
values
(null, "Capa areolar laxa.", 1, 36);

insert into
	answers
values
(null, "Piel.", 0, 36);

insert into
	answers
values
(null, "Galea aponeurótica.", 0, 36);

insert into
	answers
values
(null, "Pericráneo.", 0, 36);

insert into
	answers
values
(null, "Capa subcutánea.", 0, 36);

insert into
	answers
values
(
		null,
		"Fontanela posterior; se cierra hacia los 2 años.",
		0,
		37
	);

insert into
	answers
values
(
		null,
		"Fontanela mastoidea; se cierra a los 16 meses.",
		0,
		37
	);

insert into
	answers
values
(
		null,
		"Fontanela lambdoidea; se cierra entre los 8 meses y el año de vida.",
		0,
		37
	);

insert into
	answers
values
(
		null,
		"Fontanela esfenoidal; se cierra a los 3 años.",
		0,
		37
	);

insert into
	answers
values
(
		null,
		"Fontanela anterior; se cierra a los 18 meses.",
		1,
		37
	);

insert into
	answers
values
(null, "Geniohioideo.", 0, 37);

insert into
	answers
values
(null, "Milohioideo.", 0, 37);

insert into
	answers
values
(null, "Palatogloso.", 0, 37);

insert into
	answers
values
(null, "Geniogloso.", 0, 37);

insert into
	answers
values
(null, "Tirohioideo.", 0, 37);

insert into
	answers
values
(null, "Hacia dentro.", 0, 38);

insert into
	answers
values
(null, "Hacia fuera.", 1, 38);

insert into
	answers
values
(null, "Hacia abajo.", 0, 38);

insert into
	answers
values
(null, "Abajo y afuera.", 0, 38);

insert into
	answers
values
(null, "Abajo y adentro.", 0, 38);

insert into
	answers
values
(
		null,
		"Cigomático mayor. (número 7 de la imagen).",
		0,
		39
	);

insert into
	answers
values
(
		null,
		"Orbicular de los ojos.(número 3 de la imagen).",
		0,
		39
	);

insert into
	answers
values
(
		null,
		"Buccinador. (número 19 de la imagen).",
		1,
		39
	);

insert into
	answers
values
(
		null,
		"Orbicular de los labios. (número 10 de la imagen).",
		0,
		39
	);

insert into
	answers
values
(null, "Recto lateral.", 0, 40);

insert into
	answers
values
(null, "Recto medial e inferior.", 0, 40);

insert into
	answers
values
(null, "Recto medial.", 0, 40);

insert into
	answers
values
(null, "Recto medial y oblicuo superior.", 1, 40);

insert into
	answers
values
(null, "Recto inferior.", 0, 40);

insert into
	answers
values
(null, "C1 y C2.", 0, 41);

insert into
	answers
values
(null, "C5, C6, C7.", 0, 41);

insert into
	answers
values
(null, "C8.", 0, 41);

insert into
	answers
values
(null, "C1, C2 y C7.", 1, 41);

insert into
	answers
values
(
		null,
		"Músculo digástrico, músculo milohioideo, músculo estilohioideo y músculo genihioideo.",
		1,
		42
	);

insert into
	answers
values
(
		null,
		"Músculo digástrico, músculo milohioideo y músculo estilohioideo.",
		0,
		42
	);

insert into
	answers
values
(
		null,
		"Músculo milohioideo, músculo estilohioideo y músculo genihioideo.",
		0,
		42
	);

insert into
	answers
values
(
		null,
		"Músculo esternotiroideo, músculo esternotiroideo, músculo omohioideo.",
		0,
		42
	);

insert into
	answers
values
(
		null,
		"Arteria carótida común e interna, nervio accesorio y vena cava.",
		0,
		43
	);

insert into
	answers
values
(
		null,
		"Vena cefálica, arteria carótida externa y nervio hipogloso.",
		0,
		43
	);

insert into
	answers
values
(null, "Nervio vago y vena yugular.", 0, 43);

insert into
	answers
values
(
		null,
		"Vena yugular, nervio vago y arteria carótida común e interna.",
		1,
		43
	);

insert into
	answers
values
(null, "Músculo genihioideo", 0, 44);

insert into
	answers
values
(null, "Músculo estilohioideo", 1, 44);

insert into
	answers
values
(null, "Músculo Digástrico", 0, 44);

insert into
	answers
values
(null, "Músculo Digástrico", 0, 44);

insert into
	answers
values
(null, "Axilar.", 0, 45);

insert into
	answers
values
(null, "Espinal accesorio.", 0, 45);

insert into
	answers
values
(null, "Torácico largo.", 0, 45);

insert into
	answers
values
(null, "Radial.", 1, 45);

insert into
	answers
values
(null, "Toracodorsal.", 0, 45);

insert into
	answers
values
(null, "Primera", 0, 46);

insert into
	answers
values
(null, "Segunda", 1, 46);

insert into
	answers
values
(null, "Tercera", 0, 46);

insert into
	answers
values
(null, "Cuarta", 0, 46);

insert into
	answers
values
(null, "Quinta", 0, 46);

insert into
	answers
values
(null, "Frénico", 0, 47);

insert into
	answers
values
(null, "Intercostal", 0, 47);

insert into
	answers
values
(null, "Vago", 1, 47);

insert into
	answers
values
(null, "Fibras simples de T1 a T4", 0, 47);

insert into
	answers
values
(null, "Nervio laríngeo recurrente", 0, 47);

insert into
	answers
values
(null, "Vago", 0, 48);

insert into
	answers
values
(null, "Frénico", 0, 48);

insert into
	answers
values
(null, "Laríngeo recurrente izquierdo", 1, 48);

insert into
	answers
values
(null, "Laríngeo recurrente derecho", 0, 48);

insert into
	answers
values
(null, "Esplácnico torácico mayor", 0, 48);

insert into
	answers
values
(null, "A", 0, 49);

insert into
	answers
values
(null, "B", 0, 49);

insert into
	answers
values
(null, "C", 1, 49);

insert into
	answers
values
(null, "D", 0, 49);

insert into
	answers
values
(null, "E", 0, 49);

insert into
	answers
values
(null, "Músculo oblicuo mayor ", 0, 50);

insert into
	answers
values
(null, "Músculo transverso del abdomen", 0, 50);

insert into
	answers
values
(null, "Músculo piramidal ", 0, 50);

insert into
	answers
values
(
		null,
		"Músculo recto anterior del abdomen ",
		1,
		50
	);

insert into
	answers
values
(null, "Raíz dorsal de T3.", 0, 51);

insert into
	answers
values
(null, "Raíz ventral de T3.", 0, 51);

insert into
	answers
values
(null, "Raíz dorsal de T4.", 1, 51);

insert into
	answers
values
(null, "Raíz ventral de T4.", 0, 51);

insert into
	answers
values
(null, "Raíz dorsal de T5.", 0, 51);

insert into
	answers
values
(null, "Lateral", 0, 52);

insert into
	answers
values
(null, "Central", 0, 52);

insert into
	answers
values
(null, "Apical", 0, 52);

insert into
	answers
values
(null, "Anterior (pectoral).", 1, 52);

insert into
	answers
values
(null, "Posterior (subescapular).", 0, 52);

insert into
	answers
values
(null, "Varicocele", 0, 53);

insert into
	answers
values
(null, "Rectocele", 0, 53);

insert into
	answers
values
(null, "Cistocele", 0, 53);

insert into
	answers
values
(null, "Hidrocele", 1, 53);

insert into
	answers
values
(null, "Hipospadias", 0, 53);

insert into
	answers
values
(null, "El diámetro es transverso", 0, 54);

insert into
	answers
values
(null, "La distancia interespinosa", 1, 54);

insert into
	answers
values
(null, "El diámetro conjugado verdadero", 0, 54);

insert into
	answers
values
(null, "El conjugado diagonal", 0, 54);

insert into
	answers
values
(null, "El diámetro oblicuo", 0, 54);

insert into
	answers
values
(null, "Genitofemoral", 0, 55);

insert into
	answers
values
(null, "Ilioinguinal", 0, 55);

insert into
	answers
values
(null, "Iliohipogástrico", 0, 55);

insert into
	answers
values
(null, "Obturador", 1, 55);

insert into
	answers
values
(null, "Tronco lumbosacro", 0, 55);

insert into
	answers
values
(
		null,
		"Fibras simpáticas del conducto deferente. ",
		0,
		56
	);

insert into
	answers
values
(null, "Ilioinguinal", 0, 56);

insert into
	answers
values
(null, "Iliohipogástrico", 0, 56);

insert into
	answers
values
(null, "Rama genital del genitofemoral.", 0, 56);

insert into
	answers
values
(
		null,
		"El nervio visceral aferente de T10-L2",
		1,
		56
	);

insert into
	answers
values
(null, "Nervio ilioinguinal.", 0, 57);

insert into
	answers
values
(null, "Rama genital del genitofemoral.", 1, 57);

insert into
	answers
values
(null, "Nervio iliohipogástrico.", 0, 57);

insert into
	answers
values
(null, "Nervio pudendo.", 0, 57);

insert into
	answers
values
(null, "Nervio obturador.", 0, 57);

insert into
	answers
values
(
		null,
		"Silla turca del hueso esfenoides, que contiene a la hipófisis",
		1,
		58
	);

insert into
	answers
values
(
		null,
		"Lámina cribosa del hueso etmoides, por donde discurren los tractos olfatorios",
		0,
		58
	);

insert into
	answers
values
(
		null,
		"Agujero yugular, pasan la vena yugular interna y pares craneales IX, X y XI",
		0,
		58
	);

insert into
	answers
values
(
		null,
		"Agujero carotídeo, contiene a la arteria carótida interna.",
		0,
		58
	);

insert into
	answers
values
(
		null,
		"Articulación acromioclavicular derecha, posee una bolsa intratendinosa del olécranon, bolsa subtendinosa, bolsa subcutánea del olécranon y una bolsa bicipitoradial.",
		0,
		59
	);

insert into
	answers
values
(
		null,
		"Articulación glenohumeral izquierda, posee una bolsa intratendinosa del olécranon, bolsa subtendinosa, bolsa subcutánea del olécranon y una bolsa bicipitoradial.",
		0,
		59
	);

insert into
	answers
values
(
		null,
		"Articulación esternoclavicular izquierda, posee una bolsa subacromial, una bolsa subescapular y una bolsa subdeltoidea.",
		0,
		59
	);

insert into
	answers
values
(
		null,
		"Articulación glenohumeral derecha, posee una bolsa subacromial, una bolsa subescapular y una bolsa subdeltoidea.",
		1,
		59
	);

insert into
	answers
values
(
		null,
		"Está formado por dos tubérculos: mayor y menor, e indica la línea donde se inserta la cápsula de la articulación del hombro.",
		0,
		60
	);

insert into
	answers
values
(
		null,
		"Se encuentra lateralmente y en esta se inserta el músculo deltoides.",
		0,
		60
	);

insert into
	answers
values
(
		null,
		"Se encuentra lateralmente y se articula con la cabeza del radio.",
		1,
		60
	);

insert into
	answers
values
(
		null,
		"Se encuentra medial y se articula con el extremo proximal de la ulna.",
		0,
		60
	);

insert into
	answers
values
(
		null,
		"Surco para el nervio radial en hueso húmero derecho, pasan el nervio radial y la arteria braquial profunda.",
		1,
		61
	);

insert into
	answers
values
(
		null,
		"Tuberosidad deltoidea en hueso húmero izquierdo, inserción del músculo deltoides.",
		0,
		61
	);

insert into
	answers
values
(
		null,
		"Tróclea en hueso húmero derecho, relación con la incisura troclear de la ulna.",
		0,
		61
	);

insert into
	answers
values
(
		null,
		"Cabeza del húmero en hueso húmero izquierdo, relacionado con la cavidad glenoidea.",
		0,
		61
	);

insert into
	answers
values
(
		null,
		"Músculo pronador cuadrado izquierdo",
		0,
		62
	);

insert into
	answers
values
(
		null,
		"Músculo flexor común profundo de los dedos derecho ",
		1,
		62
	);

insert into
	answers
values
(
		null,
		"Músculo flexor radial del carpo derecho",
		0,
		62
	);

insert into
	answers
values
(
		null,
		"Tendón del extensor propio del dedo índice derecho",
		0,
		62
	);

insert into
	answers
values
(null, "Aponeurosis palmar", 0, 63);

insert into
	answers
values
(null, "Túnel del carpo", 0, 63);

insert into
	answers
values
(null, "Canal de Guyón", 0, 63);

insert into
	answers
values
(null, "Retináculo de los extensores", 1, 63);

insert into
	answers
values
(null, "Auriculotemporal.", 0, 64);

insert into
	answers
values
(null, "Petroso menor.", 0, 64);

insert into
	answers
values
(null, "Vago.", 0, 64);

insert into
	answers
values
(null, "Glosofaríngeo.", 1, 64);

insert into
	answers
values
(null, "Cuerda del tímpano.", 0, 64);

insert into
	answers
values
(null, "Ganglio pterigopalatino.", 0, 65);

insert into
	answers
values
(null, "Asta lateral de C1 a C4.", 0, 65);

insert into
	answers
values
(null, "Ganglio geniculado.", 0, 65);

insert into
	answers
values
(null, "Núcleo solitario.", 0, 65);

insert into
	answers
values
(null, "Ganglio cervical superior.", 1, 65);

insert into
	answers
values
(null, "Ganglio cervical superior.", 0, 66);

insert into
	answers
values
(null, "Nucleo de Edinger-Westphal.", 0, 66);

insert into
	answers
values
(null, "Núcleo salivatorio superior.", 1, 66);

insert into
	answers
values
(null, "Núcleo salivatorio inferior.", 0, 66);

insert into
	answers
values
(null, "Núcleo ambiguo.", 0, 66);

insert into
	answers
values
(null, "Atrapamiento del globo ocular.", 0, 67);

insert into
	answers
values
(null, "Anosmia.", 1, 67);

insert into
	answers
values
(null, "Hiperacusia.", 0, 67);

insert into
	answers
values
(null, "Acúfenos.", 0, 67);

insert into
	answers
values
(null, "Sordera.", 0, 67);

insert into
	answers
values
(null, "Vientre posterior del digástrico.", 0, 68);

insert into
	answers
values
(null, "Estapedio.", 1, 68);

insert into
	answers
values
(null, "Tensor del tímpano.", 0, 68);

insert into
	answers
values
(null, "Estilohioideo.", 0, 68);

insert into
	answers
values
(null, "Cricotiroideo.", 0, 68);