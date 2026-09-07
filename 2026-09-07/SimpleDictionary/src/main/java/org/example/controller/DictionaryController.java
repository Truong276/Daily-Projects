package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class DictionaryController {

    private final Map<String, String> dictionary = new HashMap<>();

    public DictionaryController() {

        dictionary.put("hello", "Xin chào");
        dictionary.put("book", "Quyển sách");
        dictionary.put("computer", "Máy tính");
        dictionary.put("student", "Học sinh");
        dictionary.put("teacher", "Giáo viên");
        dictionary.put("school", "Trường học");
        dictionary.put("cat", "Con mèo");
        dictionary.put("dog", "Con chó");
        dictionary.put("house", "Ngôi nhà");
        dictionary.put("car", "Ô tô");
        dictionary.put("phone", "Điện thoại");
        dictionary.put("water", "Nước");
        dictionary.put("food", "Thức ăn");
        dictionary.put("friend", "Bạn bè");
        dictionary.put("love", "Tình yêu");
    }

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/search")
    public String search(
            @RequestParam("word") String word,
            Model model) {

        String keyword = word.trim().toLowerCase();

        if (dictionary.containsKey(keyword)) {

            String meaning = dictionary.get(keyword);

            model.addAttribute("word", word);
            model.addAttribute("meaning", meaning);
            model.addAttribute("found", true);

        } else {

            model.addAttribute("word", word);
            model.addAttribute("found", false);

        }

        return "index";
    }
}
