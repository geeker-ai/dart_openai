import 'package:openai/src/core/models/completion.dart';
import 'package:openai/src/instance/openai.dart';

void main() async {
  OpenAI.apiKey = "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";
  // OpenAI.organization = "YOUR ORGANIZATION ID";
  // final models = await OpenAI.instance.model.list();
  // final model = await OpenAI.instance.model.one(models.first.id);
  // print(model.id);
  OpenAICompletionModel completion = await OpenAI.instance.completion.create(
    model: "text-davinci-003",
    prompt: "Flutter is ",
    temperature: 0.8,
    maxTokens: 100,
  );

  print(completion.choices.first.text);
}
