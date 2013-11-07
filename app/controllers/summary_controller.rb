class SummaryController < ApplicationController

  def create
    @summary = ''
    if params[:text] != ''
      @summary = generate_summary(params[:text])
    else
      @summary = "Nothing is here."
    end
  end

  def show
  end

private

  def generate_summary(text)
    sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
    sentences_sorted = sentences.sort_by { |sentence| sentence.length }
    one_third = sentences_sorted.length / 3
    one_third = sentences_sorted.slice(one_third, one_third + 1)
    ideal_sentences = sentences_sorted.select { |sentence| sentence =~ /is|are/ }

    ideal_sentences.join(".")

  end

end
