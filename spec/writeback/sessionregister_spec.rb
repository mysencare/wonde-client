# frozen_string_literal: true

require_relative '../../lib/writeback/sessionregister'
require_relative '../../lib/writeback/sessionattendancerecord'

describe Wonde::SessionRegister do
  subject(:register) { described_class.new }

  let(:attendance) { Wonde::SessionAttendanceRecord.new }

  let(:params) do
    {
      student_id: 'A1849765024',
      date: '2023-02-22',
      session: 'AM',
      attendance_code_id: 'A186523258',
      comment: 'test comment',
      minutes_late: '5',
      employee_id: 'A1329183376'
    }
  end

  before do
    attendance.setStudentId(params[:student_id])
    attendance.setDate(params[:date])
    attendance.setSession(params[:session]) # AM or PM
    attendance.setAttendanceCodeId(params[:attendance_code_id])
    attendance.setComment(params[:comment])
    attendance.setMinutesLate(params[:minutes_late])
    attendance.setEmployeeId(params[:employee_id])
  end

  it 'assigns the correct atrributes' do
    expect { register.add(attendance) }.to change { register.attendance }.from([]).to(params)
  end
end
