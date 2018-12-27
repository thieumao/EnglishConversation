//
//  StudyViewController.swift
//  EnglishConversation
//
//  Created by Nguyen Van Thieu on 12/27/18.
//  Copyright © 2018 Nguyen Van Thieu. All rights reserved.
//

import UIKit

class StudyViewController: UIViewController {

    /*
     UI:

     Step 1 Title
     Guide for Step 1
     Step 2 Title
     Questions
     Check Answer
     View Answers
     Guide for Step 2
     Step 3 Title
     Conversation
     Guide for Step 3

     Example: https://www.talkenglish.com/listening/lessonlisten.aspx?ALID=315
     */

    @IBOutlet weak var studyTableView: UITableView!

    enum StudyEnum: Int {
        case step1Listen = 0
        case guideForStep1 = 1
        case step2Quiz = 2
        case questions = 3
        case checkAnswer = 4
        case viewAnswer = 5
        case guideForStep2 = 6
        case step3Show = 7
        case conversation = 8
        case guideForStep3 = 9
        case count = 10
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupStudyTableView()
    }
}

// MARK: StudyTableView
extension StudyViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StudyEnum.count.rawValue
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let studyEnum = StudyEnum(rawValue: indexPath.row) else { return UITableViewCell() }
        switch studyEnum {
        case .step1Listen:
            return step1ListenTableViewCell()
        case .guideForStep1:
            return guideForStep1TableViewCell()
        case .step2Quiz:
            return step2QuizTableViewCell()
        case .questions:
            return questionsTableViewCell()
        case .checkAnswer:
            return checkAnswerTableViewCell()
        case .viewAnswer:
            return viewAnswerTableViewCell()
        case .guideForStep2:
            return guideForStep2TableViewCell()
        case .step3Show:
            return step3ShowTableViewCell()
        case .conversation:
            return conversationTableViewCell()
        case .guideForStep3:
            return guideForStep3TableViewCell()
        default:
            return UITableViewCell()
        }
    }

    // MARK: Setup Cells

    private func step1ListenTableViewCell() -> Step1ListenTableViewCell {
        var cell: Step1ListenTableViewCell? = studyTableView.dequeueReusableCell(
            withIdentifier: "Step1ListenTableViewCell"
        ) as? Step1ListenTableViewCell
        if cell == nil {
            studyTableView.register(
                UINib(nibName: "Step1ListenTableViewCell", bundle: nil),
                forCellReuseIdentifier: "Step1ListenTableViewCell"
            )
            cell = studyTableView.dequeueReusableCell(withIdentifier: "Step1ListenTableViewCell")
                as? Step1ListenTableViewCell
        }
        return cell ?? Step1ListenTableViewCell()
    }
    private func guideForStep1TableViewCell() -> GuideForStep1TableViewCell {
        var cell: GuideForStep1TableViewCell? = studyTableView.dequeueReusableCell(
            withIdentifier: "GuideForStep1TableViewCell"
            ) as? GuideForStep1TableViewCell
        if cell == nil {
            studyTableView.register(
                UINib(nibName: "GuideForStep1TableViewCell", bundle: nil),
                forCellReuseIdentifier: "GuideForStep1TableViewCell"
            )
            cell = studyTableView.dequeueReusableCell(withIdentifier: "GuideForStep1TableViewCell")
                as? GuideForStep1TableViewCell
        }
        return cell ?? GuideForStep1TableViewCell()
    }

    private func step2QuizTableViewCell() -> Step2QuizTableViewCell {
        var cell: Step2QuizTableViewCell? = studyTableView.dequeueReusableCell(
            withIdentifier: "Step2QuizTableViewCell"
            ) as? Step2QuizTableViewCell
        if cell == nil {
            studyTableView.register(
                UINib(nibName: "Step2QuizTableViewCell", bundle: nil),
                forCellReuseIdentifier: "Step2QuizTableViewCell"
            )
            cell = studyTableView.dequeueReusableCell(withIdentifier: "Step2QuizTableViewCell")
                as? Step2QuizTableViewCell
        }
        return cell ?? Step2QuizTableViewCell()
    }

    private func questionsTableViewCell() -> QuestionsTableViewCell {
        var cell: QuestionsTableViewCell? = studyTableView.dequeueReusableCell(
            withIdentifier: "QuestionsTableViewCell"
            ) as? QuestionsTableViewCell
        if cell == nil {
            studyTableView.register(
                UINib(nibName: "QuestionsTableViewCell", bundle: nil),
                forCellReuseIdentifier: "QuestionsTableViewCell"
            )
            cell = studyTableView.dequeueReusableCell(withIdentifier: "QuestionsTableViewCell")
                as? QuestionsTableViewCell
        }
        return cell ?? QuestionsTableViewCell()
    }

    private func checkAnswerTableViewCell() -> CheckAnswerTableViewCell {
        var cell: CheckAnswerTableViewCell? = studyTableView.dequeueReusableCell(
            withIdentifier: "CheckAnswerTableViewCell"
            ) as? CheckAnswerTableViewCell
        if cell == nil {
            studyTableView.register(
                UINib(nibName: "CheckAnswerTableViewCell", bundle: nil),
                forCellReuseIdentifier: "CheckAnswerTableViewCell"
            )
            cell = studyTableView.dequeueReusableCell(withIdentifier: "CheckAnswerTableViewCell")
                as? CheckAnswerTableViewCell
        }
        return cell ?? CheckAnswerTableViewCell()
    }

    private func viewAnswerTableViewCell() -> ViewAnswerTableViewCell {
        var cell: ViewAnswerTableViewCell? = studyTableView.dequeueReusableCell(
            withIdentifier: "ViewAnswerTableViewCell"
            ) as? ViewAnswerTableViewCell
        if cell == nil {
            studyTableView.register(
                UINib(nibName: "ViewAnswerTableViewCell", bundle: nil),
                forCellReuseIdentifier: "ViewAnswerTableViewCell"
            )
            cell = studyTableView.dequeueReusableCell(withIdentifier: "ViewAnswerTableViewCell")
                as? ViewAnswerTableViewCell
        }
        return cell ?? ViewAnswerTableViewCell()
    }

    private func guideForStep2TableViewCell() -> GuideForStep2TableViewCell {
        var cell: GuideForStep2TableViewCell? = studyTableView.dequeueReusableCell(
            withIdentifier: "GuideForStep2TableViewCell"
            ) as? GuideForStep2TableViewCell
        if cell == nil {
            studyTableView.register(
                UINib(nibName: "GuideForStep2TableViewCell", bundle: nil),
                forCellReuseIdentifier: "GuideForStep2TableViewCell"
            )
            cell = studyTableView.dequeueReusableCell(withIdentifier: "GuideForStep2TableViewCell")
                as? GuideForStep2TableViewCell
        }
        return cell ?? GuideForStep2TableViewCell()
    }

    private func step3ShowTableViewCell() -> Step3ShowTableViewCell {
        var cell: Step3ShowTableViewCell? = studyTableView.dequeueReusableCell(
            withIdentifier: "Step3ShowTableViewCell"
            ) as? Step3ShowTableViewCell
        if cell == nil {
            studyTableView.register(
                UINib(nibName: "Step3ShowTableViewCell", bundle: nil),
                forCellReuseIdentifier: "Step3ShowTableViewCell"
            )
            cell = studyTableView.dequeueReusableCell(withIdentifier: "Step3ShowTableViewCell")
                as? Step3ShowTableViewCell
        }
        return cell ?? Step3ShowTableViewCell()
    }

    private func conversationTableViewCell() -> ConversationTableViewCell {
        var cell: ConversationTableViewCell? = studyTableView.dequeueReusableCell(
            withIdentifier: "ConversationTableViewCell"
            ) as? ConversationTableViewCell
        if cell == nil {
            studyTableView.register(
                UINib(nibName: "ConversationTableViewCell", bundle: nil),
                forCellReuseIdentifier: "ConversationTableViewCell"
            )
            cell = studyTableView.dequeueReusableCell(withIdentifier: "ConversationTableViewCell")
                as? ConversationTableViewCell
        }
        return cell ?? ConversationTableViewCell()
    }

    private func guideForStep3TableViewCell() -> GuideForStep3TableViewCell {
        var cell: GuideForStep3TableViewCell? = studyTableView.dequeueReusableCell(
            withIdentifier: "GuideForStep3TableViewCell"
            ) as? GuideForStep3TableViewCell
        if cell == nil {
            studyTableView.register(
                UINib(nibName: "GuideForStep3TableViewCell", bundle: nil),
                forCellReuseIdentifier: "GuideForStep3TableViewCell"
            )
            cell = studyTableView.dequeueReusableCell(withIdentifier: "GuideForStep3TableViewCell")
                as? GuideForStep3TableViewCell
        }
        return cell ?? GuideForStep3TableViewCell()
    }

    private func setupStudyTableView() {
        studyTableView.delegate = self
        studyTableView.dataSource = self
    }
}

