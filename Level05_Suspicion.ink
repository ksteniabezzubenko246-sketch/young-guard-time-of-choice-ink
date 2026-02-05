=== level05_start ===
#Location:Заброшенный_квартал
Позади слышны шаги...

Позади слышны шаги. Ты чувствуешь на себе чей-то взгляд.

{ 
    - alert >= 4:
        За тобой явно следили.
        -> level05_bad_end
    - else:
        { alert <= 1:
            -> level05_perfect_end
          - else:
            -> level05_good_end
        }
}

=== level05_perfect_end ===
Ты полностью ушла от слежки.
Информация передана безопасно.
~ trust += 1
-> level06_start

=== level06_good_end ===
Задание выполнено, но напряжение остаётся.
-> level06_start

=== level05_bad_end ===
Теперь враги могут знать о связях подполья.
-> === level05_good_end ===.
