#ifndef BOTONCP_H
#define BOTONCP_H

#include <QWidget>
#include <QPlainTextEdit>
#include <QPushButton>
#include "textEditor.h"
#include "CCompiler/Compiler.h"

class botoncp : public QWidget
{
private:
    CodeEditor *Stdout;
    QPlainTextEdit *print;
    QPlainTextEdit *ram;
    bool isComp;
    Compiler *comp;

public:
    QPushButton *pButton;

    botoncp (QPlainTextEdit *out, QPlainTextEdit *ram,CodeEditor *in,QString name, bool isComp){
    this->Stdout =in;
    this->print=out;
    this->ram = ram;
    this->isComp = isComp;
    pButton = new QPushButton(this);
    pButton->setText(name);
    QObject::connect(pButton, &QPushButton::clicked, this, &botoncp::onButtonClicked);

    comp = new Compiler();

    }

public slots:
  void onButtonClicked () {

      if(this->isComp){

        string code = comp->allocate(Stdout->toPlainText().toStdString());

        if(code != "1"){
            print->appendPlainText(QString::fromStdString(code));
        }

        ram->clear();
        ram->appendPlainText(QString::fromStdString(comp->pull()));

      }
      else{
        comp->line = 0;
        print->clear();
        ram->clear();
        print->appendPlainText(">>mainwindow::Stdout \n>>C! Idle initialized...");
        ram->appendPlainText("                   RAM LIVE VIEW    ");
        ram->appendPlainText("_________________________________");
      }
  }
};

#endif // BOTONCP_H
