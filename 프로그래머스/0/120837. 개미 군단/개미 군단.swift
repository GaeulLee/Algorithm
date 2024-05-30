import Foundation

func solution(_ hp:Int) -> Int {
    
    let jAnt = 5
    let bAnt = 3
    
    var jCnt = 0
    var bCnt = 0
    
    if hp % jAnt == 0 {  // 장군개미로 한번에 나눠지면(나머지가 없다면)
        return hp / jAnt // 장군개미로만 나눈 값 반환
    } else {                // 장군개미로 hp를 나누고 나머지가 있다면
        jCnt = hp / jAnt    // 필요한 최대 장군개미 갯수 변수에 저장
        if (hp % jAnt) % bAnt == 0 {            // 나머지가 병정개미로 한번에 나눠지면
            return jCnt + ((hp % jAnt) / bAnt)  // 장군개미 갯수 + 병정개미 갯수
        } else { // 병정개미로 나눈 값에 나머지가 있다면
            return jCnt + ((hp % jAnt) / bAnt) + ((hp % jAnt) % bAnt)
        }
    }
}