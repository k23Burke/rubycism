class School
  VERSION = 1
  def initialize
    @student_array = []
    @ret = {};
  end

  def add n, g
    @student_array.push({n => g})
    to_h
  end

  def to_h

    if @student_array.length == 0
      return {}
    end
    @student_array.each do |stu_grade|
      stu_grade.each do |student, grade|
        if @ret.has_key?(grade) && !(@ret[grade].include? student)
          @ret[grade].push(student)
        else
          @ret[grade] = [student]
        end
      end
    end

    @ret = @ret.sort.to_h
    @ret.each do |grade, stu_array|
      @ret[grade] = stu_array.sort
    end

    @ret
  end

  def grade n
    ret_arr = []
    found = false
    if !@ret.empty?
      @ret.each do |grade, stu_array|
        if grade == n
          ret_arr = stu_array
        end
      end
    end
    ret_arr.sort!
  end
end