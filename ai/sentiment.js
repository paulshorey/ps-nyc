const NaturalLanguageUnderstandingV1 = require('ibm-watson/natural-language-understanding/v1.js');
const naturalLanguageUnderstanding = new NaturalLanguageUnderstandingV1({
  version: '2019-07-12',
  iam_apikey: 'q3jT-mj-k7QSU_cL5X03ZbiFDLhxmNrYO9-y3Tr_8WFG',
  url: 'https://gateway.watsonplatform.net/natural-language-understanding/api'
});

const analyzeParams = {
  'text': 'contraband',
  'language': 'en',
  'features': {
    'sentiment': {
      'sentiment': true
    }
  }
};

naturalLanguageUnderstanding.analyze(analyzeParams)
  .then(analysisResults => {
    console.log(JSON.stringify(analysisResults, null, 2));
  })
  .catch(err => {
    console.log('error:', err);
  });
