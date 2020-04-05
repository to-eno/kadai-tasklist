package models;

import java.util.ArrayList;
import java.util.List;

public class ValidChk {
    // バリデーションを実行する
    public static List<String> validate(Tasklist m) {
        List<String> errors = new ArrayList<String>();

        String content_error = _validateContent(m.getContent());
        if(!content_error.equals("")) {
            errors.add(content_error);
        }

        return errors;
    }

    // メッセージの必須入力チェック
    private static String _validateContent(String content) {
        if(content == null || content.equals("") || content.trim().length() == 0) {
            return "タスクを入力してください。";
        }

        return "";
    }
}
